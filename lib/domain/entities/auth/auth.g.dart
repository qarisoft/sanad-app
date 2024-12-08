// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthEntityImpl _$$AuthEntityImplFromJson(Map<String, dynamic> json) =>
    _$AuthEntityImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthEntityImplToJson(_$AuthEntityImpl instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'token': instance.token,
    };
