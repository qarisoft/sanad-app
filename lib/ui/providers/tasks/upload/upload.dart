import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sanad/app/constants.dart';
import 'package:sanad/data/src/index.dart';
import 'package:sanad/domain/entities/task/task_entity.dart';
import 'package:sanad/ui/providers/ex.dart';
import 'package:sanad/ui/providers/tasks/local_tasks/local_tasks.dart';
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
    @Default(0.0) double fraction,
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

@Riverpod(dependencies: [LocalTasks])
class UploadTaskAttemts extends _$UploadTaskAttemts {
  String getKey(int taskIdd) => 'UploadAttemts1_$taskIdd';
  @override
  UploadAttemts build(int taskId) {
    ref.keepAlive();
    final a = appStorage().getData(getKey(taskId));
    if (a != null) {
      return UploadAttemts.fromJson(a);
    }
    return UploadAttemts();
  }

  Future<int?> createUpload(TaskItemEntity item) async {
    final dio = ref.dioFactory();
    final res = await dio.post('$baseUrl/tasks/$taskId/upload/create/');
    return res.data['data']['id'] as int?;
  }

  Future<bool> create(TaskItemEntity item, int uploadId) async {
    final current = UploadTaskState.fromItem(item);
    _updateCurrent(current);
    try {
      final dio = ref.dioFactory();
      for (var i = 0; i < current.mediaCount; i++) {
        final data = FormData();
        final media = current.media[i];

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
          '/tasks/uploads/$uploadId',
          data: data,
          onSendProgress: (count, total) {
            // _updateFraction(count, total);
            _updateCurrentMediaItem(
                media.uuid, UploadState.uploadin, count / total);
            // if (kDebugMode) {
            //   print('total:$total | count:$count');
            // }
          },
        );
        final status = res.data['status'];
        if (status != null && status == 1) {
          _updateCurrentMediaItem(media.uuid, UploadState.uploaded, 0);
        } else {
          _updateCurrentMediaItem(media.uuid, UploadState.faild, 0);
        }
      }
      ref.read(localTasksProvider.notifier).closeItem(taskId);
      _onDone();

      return true;
    } catch (e) {
      state = state.copyWith(current: null);
      return false;
    }
  }

  // _updateFraction(int count, int total) {
  //   // state = state.copyWith(fraction: count / total);
  // }

  _onDone([a = true]) async {
    a;
    _onUploadDone();
    await appStorage().setData(getKey(taskId), state);
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

  _updateCurrentMediaItem(String uuid, UploadState status, double fr) {
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
