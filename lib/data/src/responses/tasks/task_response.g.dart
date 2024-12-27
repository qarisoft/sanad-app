// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedDataImpl _$$PaginatedDataImplFromJson(Map<String, dynamic> json) =>
    _$PaginatedDataImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      path: json['path'] as String?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextPageUrl: json['next_page_url'] as String?,
      perPage: (json['per_page'] as num?)?.toInt() ?? 1,
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PaginatedDataImplToJson(_$PaginatedDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'path': instance.path,
      'data': instance.data,
      'next_page_url': instance.nextPageUrl,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$HomeResponseImpl _$$HomeResponseImplFromJson(Map<String, dynamic> json) =>
    _$HomeResponseImpl(
      status: (json['status'] as num?)?.toInt() ?? 1010,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const PaginatedData()
          : PaginatedData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeResponseImplToJson(_$HomeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
