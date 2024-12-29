// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'p.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageDataImpl _$$PageDataImplFromJson(Map<String, dynamic> json) =>
    _$PageDataImpl(
      path: json['path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
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
      version: (json['version'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      serverTotal: (json['serverTotal'] as num?)?.toInt() ?? 0,
      lastPage: (json['lastPage'] as num?)?.toInt() ?? 1,
      time: DateTime.parse(json['time'] as String),
      isLoading: json['isLoading'] as bool? ?? false,
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'version': instance.version,
      'page': instance.page,
      'serverTotal': instance.serverTotal,
      'lastPage': instance.lastPage,
      'time': instance.time.toIso8601String(),
      'isLoading': instance.isLoading,
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeHash() => r'5d3abe98d3f38b9ca2701849036bb79ec44a4d04';

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
