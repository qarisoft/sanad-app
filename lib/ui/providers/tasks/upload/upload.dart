import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/data/src/index.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/ex.dart';
part 'upload.g.dart';
part 'upload.freezed.dart';

@freezed
class UploadTaskState with _$UploadTaskState {
  @JsonSerializable(explicitToJson: true)
  const factory UploadTaskState({
    required int taskId,
    DateTime? uploadedAt,
    @Default(0) int id,
    @Default(0) int mediaCount,
    @Default(false) bool isUploaded,
    @Default([]) List<MediaItem> media,
  }) = _UploadTaskState;

  factory UploadTaskState.fromJson(Map<String, dynamic> json) =>
      _$UploadTaskStateFromJson(json);
  factory UploadTaskState.fromItem(TaskItemEntity item) => UploadTaskState(
        taskId: item.task.id,
        media: item.media,
        mediaCount: item.media.length,
      );
}

@freezed
class UploadAttemts with _$UploadAttemts {
  @JsonSerializable(explicitToJson: true)
  const factory UploadAttemts({
    @Default([]) List<UploadTaskState> uploads,
    UploadTaskState? current,
  }) = _UploadAttemts;

  factory UploadAttemts.fromJson(Map<String, dynamic> json) =>
      _$UploadAttemtsFromJson(json);
}

@Riverpod(keepAlive: true)
class UploadTaskAttemts extends _$UploadTaskAttemts {
  String getKey(int taskIdd) => 'UploadAttemts1_$taskIdd';
  @override
  UploadAttemts build(int taskId) {
    final a = appStorage().getData(getKey(taskId));
    if (a != null) {
      return UploadAttemts.fromJson(a);
    }
    return UploadAttemts();
  }

  Future<bool> create(TaskItemEntity item) async {
    final current = UploadTaskState.fromItem(item);
    _updateCurrent(current);

    try {
      for (var i = 0; i < current.mediaCount; i++) {
        final media = current.media[i];
        final dio = ref.dioFactory();
        final data = FormData();

        final img = File(media.path);
        data.files.add(
          MapEntry(
            'img',
            MultipartFile.fromFileSync(
              img.path,
              filename: img.path.split(Platform.pathSeparator).last,
            ),
          ),
        );
        final res = await dio.post(
          '/home/upload/$taskId',
          data: data,
          onSendProgress: (count, total) {
            if (kDebugMode) {
              print('total:$total | count:$count');
            }
          },
        );
        final status = res.data['status'];
        if (status != null && status == 1) {
          _updateCurrentMediaItem(media.uuid, UploadState.uploaded);
        } else {
          _updateCurrentMediaItem(media.uuid, UploadState.faild);
        }
      }
      _onUploadDone();

      await appStorage().setData(getKey(taskId), state);

      return true;
    } catch (e) {
      state = state.copyWith(current: null);
      return false;
    }
  }

  _onUploadDone() {
    _setCurrentState(
      (c) {
        state = state.copyWith(
          uploads: [
            ...state.uploads,
            c.copyWith(
              isUploaded: true,
              uploadedAt: DateTime.now(),
              id: state.uploads.length + 1,
            ),
          ],
        );
        return null;
      },
    );
  }

  _updateCurrentMediaItem(String uuid, UploadState status) {
    _setCurrentState(
      (s) {
        return s.copyWith(
          media: s.media.map(
            (m) {
              if (m.uuid == uuid) {
                return m.copyWith(status: status);
              }
              return m;
            },
          ).toList(),
        );
      },
    );
  }

  _setCurrentState(UploadTaskState? Function(UploadTaskState) action) {
    final c = state.current;
    if (c != null) {
      _updateCurrent(
        action(c),
      );
    }
  }

  _updateCurrent(UploadTaskState? c) => state = state.copyWith(current: c);
}
