// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthinticatedImpl _$$AuthinticatedImplFromJson(Map<String, dynamic> json) =>
    _$AuthinticatedImpl(
      auth: AuthEntity.fromJson(json['auth'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthinticatedImplToJson(_$AuthinticatedImpl instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'runtimeType': instance.$type,
    };

_$AuthInitialImpl _$$AuthInitialImplFromJson(Map<String, dynamic> json) =>
    _$AuthInitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthInitialImplToJson(_$AuthInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authHash() => r'ed6047749c068c1444188dbd83a351042816c85f';

/// See also [Auth].
@ProviderFor(Auth)
final authProvider = AutoDisposeNotifierProvider<Auth, AuthState>.internal(
  Auth.new,
  name: r'authProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Auth = AutoDisposeNotifier<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
