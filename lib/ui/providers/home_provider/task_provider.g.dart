// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitailStateImpl _$$InitailStateImplFromJson(Map<String, dynamic> json) =>
    _$InitailStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitailStateImplToJson(_$InitailStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DataStateImpl _$$DataStateImplFromJson(Map<String, dynamic> json) =>
    _$DataStateImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DataStateImplToJson(_$DataStateImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

_$LoadingStateImpl _$$LoadingStateImplFromJson(Map<String, dynamic> json) =>
    _$LoadingStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingStateImplToJson(_$LoadingStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$messageHash() => r'54949d029eb8185733764286453ebfdfb7530f8a';

/// See also [Message].
@ProviderFor(Message)
final messageProvider = AutoDisposeNotifierProvider<Message, Failure?>.internal(
  Message.new,
  name: r'messageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$messageHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$Message = AutoDisposeNotifier<Failure?>;
String _$homeDataHash() => r'3c7f4e56f06eb17a0afc336667f3691da35c950c';

/// See also [HomeData].
@ProviderFor(HomeData)
final homeDataProvider =
    AutoDisposeNotifierProvider<HomeData, HomeTaskState>.internal(
  HomeData.new,
  name: r'homeDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeDataHash,
  dependencies: <ProviderOrFamily>[messageProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    messageProvider,
    ...?messageProvider.allTransitiveDependencies
  },
);

typedef _$HomeData = AutoDisposeNotifier<HomeTaskState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
