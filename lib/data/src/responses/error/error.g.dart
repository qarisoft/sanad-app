// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EroorsImpl _$$EroorsImplFromJson(Map<String, dynamic> json) => _$EroorsImpl(
      message: json['message'] as String?,
      error: json['error'] as String?,
      errors: (json['errors'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$$EroorsImplToJson(_$EroorsImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'errors': instance.errors,
    };
