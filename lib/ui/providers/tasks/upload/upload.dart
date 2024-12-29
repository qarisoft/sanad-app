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

part 'upload.freezed.dart';
part 'upload.g.dart';

@freezed
class UploadTaskState with _$UploadTaskState {
  @JsonSerializable(explicitToJson: true)
  const factory UploadTaskState({
    required int taskId,
    @Default(0) int uploadId,
    DateTime? uploadedAt,
    @Default(0) int id,
    @Default(0) int mediaCount,
    @Default(UploadState.initail) UploadState status,
    @Default(false) bool isUploaded,
    @Default([]) List<MediaItem> media,
    @Default(0.0) double fraction,
  }) = _UploadTaskState;

  factory UploadTaskState.fromJson(Map<String, dynamic> json) =>
      _$UploadTaskStateFromJson(json);

  factory UploadTaskState.fromItem(TaskItemEntity item, int _uploadId) =>
      UploadTaskState(
        taskId: item.task.id,
        media: item.media,
        mediaCount: item.media.length,
        uploadId: _uploadId,
      );
}

@freezed
class UploadAttemts with _$UploadAttemts {
  @JsonSerializable(explicitToJson: true)
  const factory UploadAttemts({
    @Default([]) List<UploadTaskState> uploads,
    UploadTaskState? current,
    @Default(0.0) double fraction,
  }) = _UploadAttemts;

  factory UploadAttemts.fromJson(Map<String, dynamic> json) =>
      _$UploadAttemtsFromJson(json);
}

@Riverpod(dependencies: [LocalTasks])
class UploadTaskAttemts extends _$UploadTaskAttemts {
  String getKey(int taskIdd) => 'UploadAttemts1_$taskIdd';
  CancelToken? cancelToken;

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
    final current = UploadTaskState.fromItem(item, uploadId);
    _updateCurrent(current);

    // cancelToken!.whenCancel()
    return await _upload(current, uploadId);
  }

  Future<bool> _upload(UploadTaskState current, int uploadId) async {
    cancelToken = CancelToken();
    _setCurrentState((c) => c.copyWith(status: UploadState.uploadin));
    try {
      final dio = ref.dioFactory(method: 'POST');
      for (var i = 0; i < current.mediaCount; i++) {
        if ((cancelToken?.isCancelled) ?? false) continue;
        final data = FormData();
        final media = current.media[i];
        if (media.status == UploadState.uploaded) continue;

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
        final p = '/tasks/uploads/$uploadId';

        up(int c, int t) {
          state = state.copyWith(
            fraction: c / t,
          );
        }

        final res = await dio.post(
          p,
          data: data,
          cancelToken: cancelToken,
          onSendProgress: up,
        );

        final status = res.data['status'];
        if (status != null && status == 1) {
          _updateCurrentMediaItem(media.uuid, UploadState.uploaded, 0);
        } else {
          _updateCurrentMediaItem(media.uuid, UploadState.faild, 0);
        }
      }
      // cancelToken = null;
      // _onDone();
      // return true;
    } catch (e) {
      // _onDone();
      // return false;
    }
    return await _onDone();
  }

  cancelUpload() {
    cancelToken?.cancel();
  }

  reTry() {
    final current = state.current;
    if (current != null && current.uploadId != 0) {
      _upload(current, current.uploadId);
    }
  }

  // _updateFraction(int count, int total) {
  //   // state = state.copyWith(fraction: count / total);
  // }

  Future<bool> _onDone([a = true]) async {
    a;
    _onUploadDone();

    await appStorage().setData(getKey(taskId), state);
    if (state.current == null) {
      return false;
    }
    return true;
  }

  _onUploadDone() {
    final current = state.current;
    if (current != null) {
      final a =
          current.media.where((i) => i.status == UploadState.uploaded).length ==
              current.media.length;

      if (!a) {
        _setCurrentState((c) => c.copyWith(status: UploadState.faild));
        return;
      }
      ref.read(localTasksProvider.notifier).closeItem(taskId);

      _setCurrentState(
        (c) {
          state = state.copyWith(
            uploads: [
              ...state.uploads,
              c.copyWith(
                isUploaded: a ? true : false,
                status: a ? UploadState.uploaded : UploadState.faild,
                uploadedAt: DateTime.now(),
                id: state.uploads.length + 1,
              ),
            ],
          );
          return null;
        },
      );
    }
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
