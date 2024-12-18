// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadTaskStateImpl _$$UploadTaskStateImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadTaskStateImpl(
      taskId: (json['taskId'] as num).toInt(),
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTime.parse(json['uploadedAt'] as String),
      id: (json['id'] as num?)?.toInt() ?? 0,
      mediaCount: (json['mediaCount'] as num?)?.toInt() ?? 0,
      isUploaded: json['isUploaded'] as bool? ?? false,
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => MediaItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UploadTaskStateImplToJson(
        _$UploadTaskStateImpl instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
      'id': instance.id,
      'mediaCount': instance.mediaCount,
      'isUploaded': instance.isUploaded,
      'media': instance.media.map((e) => e.toJson()).toList(),
    };

_$UploadAttemtsImpl _$$UploadAttemtsImplFromJson(Map<String, dynamic> json) =>
    _$UploadAttemtsImpl(
      uploads: (json['uploads'] as List<dynamic>?)
              ?.map((e) => UploadTaskState.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      current: json['current'] == null
          ? null
          : UploadTaskState.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UploadAttemtsImplToJson(_$UploadAttemtsImpl instance) =>
    <String, dynamic>{
      'uploads': instance.uploads.map((e) => e.toJson()).toList(),
      'current': instance.current?.toJson(),
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uploadTaskAttemtsHash() => r'e4bf89825ab24373f104acb6294a954c9a757523';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UploadTaskAttemts extends BuildlessNotifier<UploadAttemts> {
  late final int taskId;

  UploadAttemts build(
    int taskId,
  );
}

/// See also [UploadTaskAttemts].
@ProviderFor(UploadTaskAttemts)
const uploadTaskAttemtsProvider = UploadTaskAttemtsFamily();

/// See also [UploadTaskAttemts].
class UploadTaskAttemtsFamily extends Family<UploadAttemts> {
  /// See also [UploadTaskAttemts].
  const UploadTaskAttemtsFamily();

  /// See also [UploadTaskAttemts].
  UploadTaskAttemtsProvider call(
    int taskId,
  ) {
    return UploadTaskAttemtsProvider(
      taskId,
    );
  }

  @override
  UploadTaskAttemtsProvider getProviderOverride(
    covariant UploadTaskAttemtsProvider provider,
  ) {
    return call(
      provider.taskId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'uploadTaskAttemtsProvider';
}

/// See also [UploadTaskAttemts].
class UploadTaskAttemtsProvider
    extends NotifierProviderImpl<UploadTaskAttemts, UploadAttemts> {
  /// See also [UploadTaskAttemts].
  UploadTaskAttemtsProvider(
    int taskId,
  ) : this._internal(
          () => UploadTaskAttemts()..taskId = taskId,
          from: uploadTaskAttemtsProvider,
          name: r'uploadTaskAttemtsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$uploadTaskAttemtsHash,
          dependencies: UploadTaskAttemtsFamily._dependencies,
          allTransitiveDependencies:
              UploadTaskAttemtsFamily._allTransitiveDependencies,
          taskId: taskId,
        );

  UploadTaskAttemtsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskId,
  }) : super.internal();

  final int taskId;

  @override
  UploadAttemts runNotifierBuild(
    covariant UploadTaskAttemts notifier,
  ) {
    return notifier.build(
      taskId,
    );
  }

  @override
  Override overrideWith(UploadTaskAttemts Function() create) {
    return ProviderOverride(
      origin: this,
      override: UploadTaskAttemtsProvider._internal(
        () => create()..taskId = taskId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskId: taskId,
      ),
    );
  }

  @override
  NotifierProviderElement<UploadTaskAttemts, UploadAttemts> createElement() {
    return _UploadTaskAttemtsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UploadTaskAttemtsProvider && other.taskId == taskId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UploadTaskAttemtsRef on NotifierProviderRef<UploadAttemts> {
  /// The parameter `taskId` of this provider.
  int get taskId;
}

class _UploadTaskAttemtsProviderElement
    extends NotifierProviderElement<UploadTaskAttemts, UploadAttemts>
    with UploadTaskAttemtsRef {
  _UploadTaskAttemtsProviderElement(super.provider);

  @override
  int get taskId => (origin as UploadTaskAttemtsProvider).taskId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
