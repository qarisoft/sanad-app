// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthEntity _$AuthEntityFromJson(Map<String, dynamic> json) {
  return _AuthEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthEntity {
  User get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<Company> get companies => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;

  /// Serializes this AuthEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEntityCopyWith<AuthEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEntityCopyWith<$Res> {
  factory $AuthEntityCopyWith(
          AuthEntity value, $Res Function(AuthEntity) then) =
      _$AuthEntityCopyWithImpl<$Res, AuthEntity>;
  @useResult
  $Res call(
      {User user, String token, List<Company> companies, Employee? employee});

  $UserCopyWith<$Res> get user;
  $EmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class _$AuthEntityCopyWithImpl<$Res, $Val extends AuthEntity>
    implements $AuthEntityCopyWith<$Res> {
  _$AuthEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
    Object? companies = null,
    Object? employee = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
    ) as $Val);
  }

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthEntityImplCopyWith<$Res>
    implements $AuthEntityCopyWith<$Res> {
  factory _$$AuthEntityImplCopyWith(
          _$AuthEntityImpl value, $Res Function(_$AuthEntityImpl) then) =
      __$$AuthEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user, String token, List<Company> companies, Employee? employee});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $EmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$AuthEntityImplCopyWithImpl<$Res>
    extends _$AuthEntityCopyWithImpl<$Res, _$AuthEntityImpl>
    implements _$$AuthEntityImplCopyWith<$Res> {
  __$$AuthEntityImplCopyWithImpl(
      _$AuthEntityImpl _value, $Res Function(_$AuthEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
    Object? companies = null,
    Object? employee = freezed,
  }) {
    return _then(_$AuthEntityImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AuthEntityImpl implements _AuthEntity {
  const _$AuthEntityImpl(
      {required this.user,
      required this.token,
      final List<Company> companies = const [],
      this.employee})
      : _companies = companies;

  factory _$AuthEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthEntityImplFromJson(json);

  @override
  final User user;
  @override
  final String token;
  final List<Company> _companies;
  @override
  @JsonKey()
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  final Employee? employee;

  @override
  String toString() {
    return 'AuthEntity(user: $user, token: $token, companies: $companies, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEntityImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token,
      const DeepCollectionEquality().hash(_companies), employee);

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEntityImplCopyWith<_$AuthEntityImpl> get copyWith =>
      __$$AuthEntityImplCopyWithImpl<_$AuthEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthEntityImplToJson(
      this,
    );
  }
}

abstract class _AuthEntity implements AuthEntity {
  const factory _AuthEntity(
      {required final User user,
      required final String token,
      final List<Company> companies,
      final Employee? employee}) = _$AuthEntityImpl;

  factory _AuthEntity.fromJson(Map<String, dynamic> json) =
      _$AuthEntityImpl.fromJson;

  @override
  User get user;
  @override
  String get token;
  @override
  List<Company> get companies;
  @override
  Employee? get employee;

  /// Create a copy of AuthEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEntityImplCopyWith<_$AuthEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
