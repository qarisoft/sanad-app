// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_provider.dart';

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
String _$homeDataHash() => r'd0810a1ca4a07679dbec6c7bc25466ec9d0e683b';

/// See also [HomeData].
@ProviderFor(HomeData)
final homeDataProvider =
    AutoDisposeAsyncNotifierProvider<HomeData, List<TaskEntity>>.internal(
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

typedef _$HomeData = AutoDisposeAsyncNotifier<List<TaskEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
