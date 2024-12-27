import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../location.dart';

part 'task_entity.freezed.dart';
part 'task_entity.g.dart';

@freezed
class TaskEntity with _$TaskEntity {
  @JsonSerializable(explicitToJson: true)
  const factory TaskEntity({
    @Default(0) int id,
    @Default('- - - -') String customer,
    @Default(' - - - ') @JsonKey(name: 'company_name') String companyName,
    @Default(' - - - ') String code,
    @Default(LocationEntity()) LocationEntity location,
    @Default('') @JsonKey(name: 'finished_at') String finishedAt,
    @Default('') @JsonKey(name: 'finished_at_h') String finishedAtH,
    @Default('') @JsonKey(name: 'published_at') String publishedAt,
    @Default('') @JsonKey(name: 'published_at_h') String publishedAtH,
    @Default('') String notes,
    @Default('') @JsonKey(name: 'estate_type') String estateType,
    @Default('') @JsonKey(name: "company_feedback") String companyFeedback,
    @Default('') String city,
    @Default('') String district,
    @Default('') String address,
  }) = _TaskEntity;

  factory TaskEntity.fromJson(Map<String, dynamic> json) =>
      _$TaskEntityFromJson(json);
}

extension TaskEntityDateTiem on String {
  DateTime? toDateTime() => DateTime.parse(toString());
}

@freezed
class TaskPricingEntity with _$TaskPricingEntity {
  const factory TaskPricingEntity({
    required String id,
    @JsonKey(name: 'task_id') required int taskId,
    @JsonKey(name: 'total_price') @Default(0) double totalPrice,
    @JsonKey(name: 'meter_square_price') @Default(0) double meterSquarePrice,
    @JsonKey(name: 'meter_square_area') @Default(0) double meterSquareArea,
    @Default('') String name,
    @Default('') String key,
  }) = _TaskPricingEntity;

  factory TaskPricingEntity.fromJson(Map<String, dynamic> json) =>
      _$TaskPricingEntityFromJson(json);

  factory TaskPricingEntity.empty({
    String? id,
    int? taskId,
  }) =>
      TaskPricingEntity(
          id: id ?? '1', taskId: taskId ?? 1, name: 'name', key: 'key');
}

enum UploadState { initail, uploadin, uploaded, faild }

@freezed
abstract class MediaItem with _$MediaItem {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MediaItem({
    required String path,
    required String uuid,
    @Default(UploadState.initail) UploadState status,
  }) = _MediaItem;

  factory MediaItem.fromJson(Map<String, dynamic> json) =>
      _$MediaItemFromJson(json);
}

@freezed
abstract class TaskItemEntity with _$TaskItemEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TaskItemEntity({
    required TaskEntity task,
    @Default([]) List<TaskPricingEntity> pricing,
    @Default([]) List<MediaItem> media,
    @Default(false) bool isClosed,
    @Default(false) bool isUploading,
  }) = _TaskItemEntity;

  factory TaskItemEntity.fromJson(Map<String, dynamic> json) =>
      _$TaskItemEntityFromJson(json);
}

@freezed
class LocalTasksList with _$LocalTasksList {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LocalTasksList({
    required List<TaskItemEntity> tasks,
  }) = _LocalTasksList;

  factory LocalTasksList.fromJson(Map<String, dynamic> json) =>
      _$LocalTasksListFromJson(json);

  factory LocalTasksList.fromString(String s) => _$LocalTasksListFromJson(
        jsonDecode(s),
      );
}
