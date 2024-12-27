// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationEntityImpl _$$LocationEntityImplFromJson(Map<String, dynamic> json) =>
    _$LocationEntityImpl(
      lat: (convertJ(json, 'latitude') as num?)?.toDouble() ?? 0.0,
      lng: (convertJ(json, 'longitude') as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$LocationEntityImplToJson(
        _$LocationEntityImpl instance) =>
    <String, dynamic>{
      'latitude': instance.lat,
      'longitude': instance.lng,
    };
