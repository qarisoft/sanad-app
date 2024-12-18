// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskEntityImpl _$$TaskEntityImplFromJson(Map<String, dynamic> json) =>
    _$TaskEntityImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      customer: json['customer'] as String? ?? 'no Customer',
      companyName: json['company_name'] as String? ?? ' - - - ',
      code: json['code'] as String? ?? 'no code',
      location: json['location'] == null
          ? const LocationEntity()
          : LocationEntity.fromJson(json['location'] as Map<String, dynamic>),
      finishedAt: json['finished_at'] as String? ?? '',
      finishedAtH: json['finished_at_h'] as String? ?? '',
      publishedAt: json['published_at'] as String? ?? '',
      publishedAtH: json['published_at_h'] as String? ?? '',
      notes: json['notes'] as String? ?? '',
      estateType: json['estate_type'] as String? ?? '',
      companyFeedback: json['company_feedback'] as String? ?? '',
      city: json['city'] as String? ?? '',
      district: json['district'] as String? ?? '',
      address: json['address'] as String? ?? '',
    );

Map<String, dynamic> _$$TaskEntityImplToJson(_$TaskEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'company_name': instance.companyName,
      'code': instance.code,
      'location': instance.location.toJson(),
      'finished_at': instance.finishedAt,
      'finished_at_h': instance.finishedAtH,
      'published_at': instance.publishedAt,
      'published_at_h': instance.publishedAtH,
      'notes': instance.notes,
      'estate_type': instance.estateType,
      'company_feedback': instance.companyFeedback,
      'city': instance.city,
      'district': instance.district,
      'address': instance.address,
    };

_$TaskPricingEntityImpl _$$TaskPricingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskPricingEntityImpl(
      id: (json['id'] as num).toInt(),
      taskId: (json['task_id'] as num).toInt(),
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0,
      meterSquarePrice: (json['meter_square_price'] as num?)?.toDouble() ?? 0,
      meterSquareArea: (json['meter_square_area'] as num?)?.toDouble() ?? 0,
      name: json['name'] as String? ?? '',
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$$TaskPricingEntityImplToJson(
        _$TaskPricingEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'total_price': instance.totalPrice,
      'meter_square_price': instance.meterSquarePrice,
      'meter_square_area': instance.meterSquareArea,
      'name': instance.name,
      'key': instance.key,
    };

_$MediaItemImpl _$$MediaItemImplFromJson(Map<String, dynamic> json) =>
    _$MediaItemImpl(
      path: json['path'] as String,
      uuid: json['uuid'] as String,
      status: $enumDecodeNullable(_$UploadStateEnumMap, json['status']) ??
          UploadState.initail,
    );

Map<String, dynamic> _$$MediaItemImplToJson(_$MediaItemImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'uuid': instance.uuid,
      'status': _$UploadStateEnumMap[instance.status]!,
    };

const _$UploadStateEnumMap = {
  UploadState.initail: 'initail',
  UploadState.uploadin: 'uploadin',
  UploadState.uploaded: 'uploaded',
  UploadState.faild: 'faild',
};

_$TaskItemEntityImpl _$$TaskItemEntityImplFromJson(Map<String, dynamic> json) =>
    _$TaskItemEntityImpl(
      task: TaskEntity.fromJson(json['task'] as Map<String, dynamic>),
      pricing: (json['pricing'] as List<dynamic>?)
              ?.map(
                  (e) => TaskPricingEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => MediaItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isClosed: json['is_closed'] as bool? ?? false,
      isUploading: json['is_uploading'] as bool? ?? false,
    );

Map<String, dynamic> _$$TaskItemEntityImplToJson(
        _$TaskItemEntityImpl instance) =>
    <String, dynamic>{
      'task': instance.task.toJson(),
      'pricing': instance.pricing.map((e) => e.toJson()).toList(),
      'media': instance.media.map((e) => e.toJson()).toList(),
      'is_closed': instance.isClosed,
      'is_uploading': instance.isUploading,
    };

_$LocalTasksListImpl _$$LocalTasksListImplFromJson(Map<String, dynamic> json) =>
    _$LocalTasksListImpl(
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => TaskItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocalTasksListImplToJson(
        _$LocalTasksListImpl instance) =>
    <String, dynamic>{
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
    };
