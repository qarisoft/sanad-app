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
      'auth': instance.auth.toJson(),
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

String _$loginCallHash() => r'6811836b20c0bfd50ed501c7d5ec9acf5cd7166f';

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

/// See also [loginCall].
@ProviderFor(loginCall)
const loginCallProvider = LoginCallFamily();

/// See also [loginCall].
class LoginCallFamily extends Family<AsyncValue<bool>> {
  /// See also [loginCall].
  const LoginCallFamily();

  /// See also [loginCall].
  LoginCallProvider call(
    LoginRequest params,
  ) {
    return LoginCallProvider(
      params,
    );
  }

  @override
  LoginCallProvider getProviderOverride(
    covariant LoginCallProvider provider,
  ) {
    return call(
      provider.params,
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
  String? get name => r'loginCallProvider';
}

/// See also [loginCall].
class LoginCallProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [loginCall].
  LoginCallProvider(
    LoginRequest params,
  ) : this._internal(
          (ref) => loginCall(
            ref as LoginCallRef,
            params,
          ),
          from: loginCallProvider,
          name: r'loginCallProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginCallHash,
          dependencies: LoginCallFamily._dependencies,
          allTransitiveDependencies: LoginCallFamily._allTransitiveDependencies,
          params: params,
        );

  LoginCallProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final LoginRequest params;

  @override
  Override overrideWith(
    FutureOr<bool> Function(LoginCallRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginCallProvider._internal(
        (ref) => create(ref as LoginCallRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _LoginCallProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginCallProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoginCallRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `params` of this provider.
  LoginRequest get params;
}

class _LoginCallProviderElement extends AutoDisposeFutureProviderElement<bool>
    with LoginCallRef {
  _LoginCallProviderElement(super.provider);

  @override
  LoginRequest get params => (origin as LoginCallProvider).params;
}

String _$registerCallHash() => r'cb1e6a8ff009036836830fbafa83063e1874b59f';

/// See also [registerCall].
@ProviderFor(registerCall)
const registerCallProvider = RegisterCallFamily();

/// See also [registerCall].
class RegisterCallFamily extends Family<AsyncValue<bool>> {
  /// See also [registerCall].
  const RegisterCallFamily();

  /// See also [registerCall].
  RegisterCallProvider call(
    RegisterRequest params,
  ) {
    return RegisterCallProvider(
      params,
    );
  }

  @override
  RegisterCallProvider getProviderOverride(
    covariant RegisterCallProvider provider,
  ) {
    return call(
      provider.params,
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
  String? get name => r'registerCallProvider';
}

/// See also [registerCall].
class RegisterCallProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [registerCall].
  RegisterCallProvider(
    RegisterRequest params,
  ) : this._internal(
          (ref) => registerCall(
            ref as RegisterCallRef,
            params,
          ),
          from: registerCallProvider,
          name: r'registerCallProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$registerCallHash,
          dependencies: RegisterCallFamily._dependencies,
          allTransitiveDependencies:
              RegisterCallFamily._allTransitiveDependencies,
          params: params,
        );

  RegisterCallProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final RegisterRequest params;

  @override
  Override overrideWith(
    FutureOr<bool> Function(RegisterCallRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RegisterCallProvider._internal(
        (ref) => create(ref as RegisterCallRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _RegisterCallProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisterCallProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RegisterCallRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `params` of this provider.
  RegisterRequest get params;
}

class _RegisterCallProviderElement
    extends AutoDisposeFutureProviderElement<bool> with RegisterCallRef {
  _RegisterCallProviderElement(super.provider);

  @override
  RegisterRequest get params => (origin as RegisterCallProvider).params;
}

String _$authHash() => r'8bffe68d9f5d9837843e9c1541fea555a6652e57';

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
String _$deletAccountHash() => r'cf8554679a66b12b2abd1f5811e1c8532e7d464a';

/// See also [DeletAccount].
@ProviderFor(DeletAccount)
final deletAccountProvider =
    AutoDisposeNotifierProvider<DeletAccount, DeleteAccountState>.internal(
  DeletAccount.new,
  name: r'deletAccountProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deletAccountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DeletAccount = AutoDisposeNotifier<DeleteAccountState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
