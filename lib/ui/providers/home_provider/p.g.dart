// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageDataImpl _$$PageDataImplFromJson(Map<String, dynamic> json) =>
    _$PageDataImpl(
      path: json['path'] as String,
      id: (json['id'] as num).toInt(),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PageDataImplToJson(_$PageDataImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      total: (json['total'] as num?)?.toInt() ?? 0,
      isLoading: json['isLoading'] as bool? ?? true,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PageData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'isLoading': instance.isLoading,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeHash() => r'346fb342f722fb58ffde168c2b32ffc717c74636';

/// See also [Home].
@ProviderFor(Home)
final homeProvider = AutoDisposeNotifierProvider<Home, HomeState>.internal(
  Home.new,
  name: r'homeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Home = AutoDisposeNotifier<HomeState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
