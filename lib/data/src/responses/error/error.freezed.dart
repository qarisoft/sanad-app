// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Eroors.fromJson(json);
}

/// @nodoc
mixin _$Errors {
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, List<String>>? get errors => throw _privateConstructorUsedError;

  /// Serializes this Errors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Errors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorsCopyWith<Errors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res, Errors>;
  @useResult
  $Res call(
      {String? message, String? error, Map<String, List<String>>? errors});
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res, $Val extends Errors>
    implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Errors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EroorsImplCopyWith<$Res> implements $ErrorsCopyWith<$Res> {
  factory _$$EroorsImplCopyWith(
          _$EroorsImpl value, $Res Function(_$EroorsImpl) then) =
      __$$EroorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message, String? error, Map<String, List<String>>? errors});
}

/// @nodoc
class __$$EroorsImplCopyWithImpl<$Res>
    extends _$ErrorsCopyWithImpl<$Res, _$EroorsImpl>
    implements _$$EroorsImplCopyWith<$Res> {
  __$$EroorsImplCopyWithImpl(
      _$EroorsImpl _value, $Res Function(_$EroorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Errors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$EroorsImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EroorsImpl implements _Eroors {
  const _$EroorsImpl(
      {this.message, this.error, final Map<String, List<String>>? errors})
      : _errors = errors;

  factory _$EroorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EroorsImplFromJson(json);

  @override
  final String? message;
  @override
  final String? error;
  final Map<String, List<String>>? _errors;
  @override
  Map<String, List<String>>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Errors(message: $message, error: $error, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EroorsImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, error,
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of Errors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EroorsImplCopyWith<_$EroorsImpl> get copyWith =>
      __$$EroorsImplCopyWithImpl<_$EroorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EroorsImplToJson(
      this,
    );
  }
}

abstract class _Eroors implements Errors {
  const factory _Eroors(
      {final String? message,
      final String? error,
      final Map<String, List<String>>? errors}) = _$EroorsImpl;

  factory _Eroors.fromJson(Map<String, dynamic> json) = _$EroorsImpl.fromJson;

  @override
  String? get message;
  @override
  String? get error;
  @override
  Map<String, List<String>>? get errors;

  /// Create a copy of Errors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EroorsImplCopyWith<_$EroorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
