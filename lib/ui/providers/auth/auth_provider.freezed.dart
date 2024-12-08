// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authinticated':
      return Authinticated.fromJson(json);
    case 'initial':
      return AuthInitial.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity auth) authinticated,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity auth)? authinticated,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity auth)? authinticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) authinticated,
    required TResult Function(AuthInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authinticated value)? authinticated,
    TResult? Function(AuthInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthinticatedImplCopyWith<$Res> {
  factory _$$AuthinticatedImplCopyWith(
          _$AuthinticatedImpl value, $Res Function(_$AuthinticatedImpl) then) =
      __$$AuthinticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthEntity auth});

  $AuthEntityCopyWith<$Res> get auth;
}

/// @nodoc
class __$$AuthinticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthinticatedImpl>
    implements _$$AuthinticatedImplCopyWith<$Res> {
  __$$AuthinticatedImplCopyWithImpl(
      _$AuthinticatedImpl _value, $Res Function(_$AuthinticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
  }) {
    return _then(_$AuthinticatedImpl(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthEntity,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthEntityCopyWith<$Res> get auth {
    return $AuthEntityCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthinticatedImpl implements Authinticated {
  const _$AuthinticatedImpl({required this.auth, final String? $type})
      : $type = $type ?? 'authinticated';

  factory _$AuthinticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthinticatedImplFromJson(json);

  @override
  final AuthEntity auth;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authinticated(auth: $auth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthinticatedImpl &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, auth);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthinticatedImplCopyWith<_$AuthinticatedImpl> get copyWith =>
      __$$AuthinticatedImplCopyWithImpl<_$AuthinticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity auth) authinticated,
    required TResult Function() initial,
  }) {
    return authinticated(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity auth)? authinticated,
    TResult? Function()? initial,
  }) {
    return authinticated?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity auth)? authinticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authinticated != null) {
      return authinticated(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) authinticated,
    required TResult Function(AuthInitial value) initial,
  }) {
    return authinticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authinticated value)? authinticated,
    TResult? Function(AuthInitial value)? initial,
  }) {
    return authinticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) {
    if (authinticated != null) {
      return authinticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthinticatedImplToJson(
      this,
    );
  }
}

abstract class Authinticated implements AuthState {
  const factory Authinticated({required final AuthEntity auth}) =
      _$AuthinticatedImpl;

  factory Authinticated.fromJson(Map<String, dynamic> json) =
      _$AuthinticatedImpl.fromJson;

  AuthEntity get auth;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthinticatedImplCopyWith<_$AuthinticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$AuthInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity auth) authinticated,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity auth)? authinticated,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity auth)? authinticated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authinticated value) authinticated,
    required TResult Function(AuthInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authinticated value)? authinticated,
    TResult? Function(AuthInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authinticated value)? authinticated,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthInitialImplToJson(
      this,
    );
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitialImpl;

  factory AuthInitial.fromJson(Map<String, dynamic> json) =
      _$AuthInitialImpl.fromJson;
}
