// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$acceptHash() => r'69bf39c12338b5fac38b6152453680b766998af6';

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

/// See also [accept].
@ProviderFor(accept)
const acceptProvider = AcceptFamily();

/// See also [accept].
class AcceptFamily extends Family<AsyncValue<bool>> {
  /// See also [accept].
  const AcceptFamily();

  /// See also [accept].
  AcceptProvider call(
    int taskId,
  ) {
    return AcceptProvider(
      taskId,
    );
  }

  @override
  AcceptProvider getProviderOverride(
    covariant AcceptProvider provider,
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
  String? get name => r'acceptProvider';
}

/// See also [accept].
class AcceptProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [accept].
  AcceptProvider(
    int taskId,
  ) : this._internal(
          (ref) => accept(
            ref as AcceptRef,
            taskId,
          ),
          from: acceptProvider,
          name: r'acceptProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$acceptHash,
          dependencies: AcceptFamily._dependencies,
          allTransitiveDependencies: AcceptFamily._allTransitiveDependencies,
          taskId: taskId,
        );

  AcceptProvider._internal(
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
  Override overrideWith(
    FutureOr<bool> Function(AcceptRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AcceptProvider._internal(
        (ref) => create(ref as AcceptRef),
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
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _AcceptProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AcceptProvider && other.taskId == taskId;
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
mixin AcceptRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `taskId` of this provider.
  int get taskId;
}

class _AcceptProviderElement extends AutoDisposeFutureProviderElement<bool>
    with AcceptRef {
  _AcceptProviderElement(super.provider);

  @override
  int get taskId => (origin as AcceptProvider).taskId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
