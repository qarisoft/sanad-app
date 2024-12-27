// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskEntity _$TaskEntityFromJson(Map<String, dynamic> json) {
  return _TaskEntity.fromJson(json);
}

/// @nodoc
mixin _$TaskEntity {
  int get id => throw _privateConstructorUsedError;
  String get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  LocationEntity get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'finished_at')
  String get finishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'finished_at_h')
  String get finishedAtH => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at_h')
  String get publishedAtH => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'estate_type')
  String get estateType => throw _privateConstructorUsedError;
  @JsonKey(name: "company_feedback")
  String get companyFeedback => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this TaskEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskEntityCopyWith<TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityCopyWith<$Res> {
  factory $TaskEntityCopyWith(
          TaskEntity value, $Res Function(TaskEntity) then) =
      _$TaskEntityCopyWithImpl<$Res, TaskEntity>;
  @useResult
  $Res call(
      {int id,
      String customer,
      @JsonKey(name: 'company_name') String companyName,
      String code,
      LocationEntity location,
      @JsonKey(name: 'finished_at') String finishedAt,
      @JsonKey(name: 'finished_at_h') String finishedAtH,
      @JsonKey(name: 'published_at') String publishedAt,
      @JsonKey(name: 'published_at_h') String publishedAtH,
      String notes,
      @JsonKey(name: 'estate_type') String estateType,
      @JsonKey(name: "company_feedback") String companyFeedback,
      String city,
      String district,
      String address});

  $LocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class _$TaskEntityCopyWithImpl<$Res, $Val extends TaskEntity>
    implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? companyName = null,
    Object? code = null,
    Object? location = null,
    Object? finishedAt = null,
    Object? finishedAtH = null,
    Object? publishedAt = null,
    Object? publishedAtH = null,
    Object? notes = null,
    Object? estateType = null,
    Object? companyFeedback = null,
    Object? city = null,
    Object? district = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
      finishedAt: null == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAtH: null == finishedAtH
          ? _value.finishedAtH
          : finishedAtH // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAtH: null == publishedAtH
          ? _value.publishedAtH
          : publishedAtH // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      estateType: null == estateType
          ? _value.estateType
          : estateType // ignore: cast_nullable_to_non_nullable
              as String,
      companyFeedback: null == companyFeedback
          ? _value.companyFeedback
          : companyFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res> get location {
    return $LocationEntityCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskEntityImplCopyWith<$Res>
    implements $TaskEntityCopyWith<$Res> {
  factory _$$TaskEntityImplCopyWith(
          _$TaskEntityImpl value, $Res Function(_$TaskEntityImpl) then) =
      __$$TaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String customer,
      @JsonKey(name: 'company_name') String companyName,
      String code,
      LocationEntity location,
      @JsonKey(name: 'finished_at') String finishedAt,
      @JsonKey(name: 'finished_at_h') String finishedAtH,
      @JsonKey(name: 'published_at') String publishedAt,
      @JsonKey(name: 'published_at_h') String publishedAtH,
      String notes,
      @JsonKey(name: 'estate_type') String estateType,
      @JsonKey(name: "company_feedback") String companyFeedback,
      String city,
      String district,
      String address});

  @override
  $LocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class __$$TaskEntityImplCopyWithImpl<$Res>
    extends _$TaskEntityCopyWithImpl<$Res, _$TaskEntityImpl>
    implements _$$TaskEntityImplCopyWith<$Res> {
  __$$TaskEntityImplCopyWithImpl(
      _$TaskEntityImpl _value, $Res Function(_$TaskEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? companyName = null,
    Object? code = null,
    Object? location = null,
    Object? finishedAt = null,
    Object? finishedAtH = null,
    Object? publishedAt = null,
    Object? publishedAtH = null,
    Object? notes = null,
    Object? estateType = null,
    Object? companyFeedback = null,
    Object? city = null,
    Object? district = null,
    Object? address = null,
  }) {
    return _then(_$TaskEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
      finishedAt: null == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      finishedAtH: null == finishedAtH
          ? _value.finishedAtH
          : finishedAtH // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAtH: null == publishedAtH
          ? _value.publishedAtH
          : publishedAtH // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      estateType: null == estateType
          ? _value.estateType
          : estateType // ignore: cast_nullable_to_non_nullable
              as String,
      companyFeedback: null == companyFeedback
          ? _value.companyFeedback
          : companyFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TaskEntityImpl implements _TaskEntity {
  const _$TaskEntityImpl(
      {this.id = 0,
      this.customer = '- - - -',
      @JsonKey(name: 'company_name') this.companyName = ' - - - ',
      this.code = ' - - - ',
      this.location = const LocationEntity(),
      @JsonKey(name: 'finished_at') this.finishedAt = '',
      @JsonKey(name: 'finished_at_h') this.finishedAtH = '',
      @JsonKey(name: 'published_at') this.publishedAt = '',
      @JsonKey(name: 'published_at_h') this.publishedAtH = '',
      this.notes = '',
      @JsonKey(name: 'estate_type') this.estateType = '',
      @JsonKey(name: "company_feedback") this.companyFeedback = '',
      this.city = '',
      this.district = '',
      this.address = ''});

  factory _$TaskEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskEntityImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String customer;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final LocationEntity location;
  @override
  @JsonKey(name: 'finished_at')
  final String finishedAt;
  @override
  @JsonKey(name: 'finished_at_h')
  final String finishedAtH;
  @override
  @JsonKey(name: 'published_at')
  final String publishedAt;
  @override
  @JsonKey(name: 'published_at_h')
  final String publishedAtH;
  @override
  @JsonKey()
  final String notes;
  @override
  @JsonKey(name: 'estate_type')
  final String estateType;
  @override
  @JsonKey(name: "company_feedback")
  final String companyFeedback;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String district;
  @override
  @JsonKey()
  final String address;

  @override
  String toString() {
    return 'TaskEntity(id: $id, customer: $customer, companyName: $companyName, code: $code, location: $location, finishedAt: $finishedAt, finishedAtH: $finishedAtH, publishedAt: $publishedAt, publishedAtH: $publishedAtH, notes: $notes, estateType: $estateType, companyFeedback: $companyFeedback, city: $city, district: $district, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
            (identical(other.finishedAtH, finishedAtH) ||
                other.finishedAtH == finishedAtH) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.publishedAtH, publishedAtH) ||
                other.publishedAtH == publishedAtH) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.estateType, estateType) ||
                other.estateType == estateType) &&
            (identical(other.companyFeedback, companyFeedback) ||
                other.companyFeedback == companyFeedback) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customer,
      companyName,
      code,
      location,
      finishedAt,
      finishedAtH,
      publishedAt,
      publishedAtH,
      notes,
      estateType,
      companyFeedback,
      city,
      district,
      address);

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      __$$TaskEntityImplCopyWithImpl<_$TaskEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskEntityImplToJson(
      this,
    );
  }
}

abstract class _TaskEntity implements TaskEntity {
  const factory _TaskEntity(
      {final int id,
      final String customer,
      @JsonKey(name: 'company_name') final String companyName,
      final String code,
      final LocationEntity location,
      @JsonKey(name: 'finished_at') final String finishedAt,
      @JsonKey(name: 'finished_at_h') final String finishedAtH,
      @JsonKey(name: 'published_at') final String publishedAt,
      @JsonKey(name: 'published_at_h') final String publishedAtH,
      final String notes,
      @JsonKey(name: 'estate_type') final String estateType,
      @JsonKey(name: "company_feedback") final String companyFeedback,
      final String city,
      final String district,
      final String address}) = _$TaskEntityImpl;

  factory _TaskEntity.fromJson(Map<String, dynamic> json) =
      _$TaskEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get customer;
  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get code;
  @override
  LocationEntity get location;
  @override
  @JsonKey(name: 'finished_at')
  String get finishedAt;
  @override
  @JsonKey(name: 'finished_at_h')
  String get finishedAtH;
  @override
  @JsonKey(name: 'published_at')
  String get publishedAt;
  @override
  @JsonKey(name: 'published_at_h')
  String get publishedAtH;
  @override
  String get notes;
  @override
  @JsonKey(name: 'estate_type')
  String get estateType;
  @override
  @JsonKey(name: "company_feedback")
  String get companyFeedback;
  @override
  String get city;
  @override
  String get district;
  @override
  String get address;

  /// Create a copy of TaskEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskPricingEntity _$TaskPricingEntityFromJson(Map<String, dynamic> json) {
  return _TaskPricingEntity.fromJson(json);
}

/// @nodoc
mixin _$TaskPricingEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'meter_square_price')
  double get meterSquarePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'meter_square_area')
  double get meterSquareArea => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  /// Serializes this TaskPricingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskPricingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskPricingEntityCopyWith<TaskPricingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskPricingEntityCopyWith<$Res> {
  factory $TaskPricingEntityCopyWith(
          TaskPricingEntity value, $Res Function(TaskPricingEntity) then) =
      _$TaskPricingEntityCopyWithImpl<$Res, TaskPricingEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') int taskId,
      @JsonKey(name: 'total_price') double totalPrice,
      @JsonKey(name: 'meter_square_price') double meterSquarePrice,
      @JsonKey(name: 'meter_square_area') double meterSquareArea,
      String name,
      String key});
}

/// @nodoc
class _$TaskPricingEntityCopyWithImpl<$Res, $Val extends TaskPricingEntity>
    implements $TaskPricingEntityCopyWith<$Res> {
  _$TaskPricingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskPricingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? totalPrice = null,
    Object? meterSquarePrice = null,
    Object? meterSquareArea = null,
    Object? name = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      meterSquarePrice: null == meterSquarePrice
          ? _value.meterSquarePrice
          : meterSquarePrice // ignore: cast_nullable_to_non_nullable
              as double,
      meterSquareArea: null == meterSquareArea
          ? _value.meterSquareArea
          : meterSquareArea // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskPricingEntityImplCopyWith<$Res>
    implements $TaskPricingEntityCopyWith<$Res> {
  factory _$$TaskPricingEntityImplCopyWith(_$TaskPricingEntityImpl value,
          $Res Function(_$TaskPricingEntityImpl) then) =
      __$$TaskPricingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') int taskId,
      @JsonKey(name: 'total_price') double totalPrice,
      @JsonKey(name: 'meter_square_price') double meterSquarePrice,
      @JsonKey(name: 'meter_square_area') double meterSquareArea,
      String name,
      String key});
}

/// @nodoc
class __$$TaskPricingEntityImplCopyWithImpl<$Res>
    extends _$TaskPricingEntityCopyWithImpl<$Res, _$TaskPricingEntityImpl>
    implements _$$TaskPricingEntityImplCopyWith<$Res> {
  __$$TaskPricingEntityImplCopyWithImpl(_$TaskPricingEntityImpl _value,
      $Res Function(_$TaskPricingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskPricingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? totalPrice = null,
    Object? meterSquarePrice = null,
    Object? meterSquareArea = null,
    Object? name = null,
    Object? key = null,
  }) {
    return _then(_$TaskPricingEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      meterSquarePrice: null == meterSquarePrice
          ? _value.meterSquarePrice
          : meterSquarePrice // ignore: cast_nullable_to_non_nullable
              as double,
      meterSquareArea: null == meterSquareArea
          ? _value.meterSquareArea
          : meterSquareArea // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskPricingEntityImpl implements _TaskPricingEntity {
  const _$TaskPricingEntityImpl(
      {required this.id,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'total_price') this.totalPrice = 0,
      @JsonKey(name: 'meter_square_price') this.meterSquarePrice = 0,
      @JsonKey(name: 'meter_square_area') this.meterSquareArea = 0,
      this.name = '',
      this.key = ''});

  factory _$TaskPricingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskPricingEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'task_id')
  final int taskId;
  @override
  @JsonKey(name: 'total_price')
  final double totalPrice;
  @override
  @JsonKey(name: 'meter_square_price')
  final double meterSquarePrice;
  @override
  @JsonKey(name: 'meter_square_area')
  final double meterSquareArea;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String key;

  @override
  String toString() {
    return 'TaskPricingEntity(id: $id, taskId: $taskId, totalPrice: $totalPrice, meterSquarePrice: $meterSquarePrice, meterSquareArea: $meterSquareArea, name: $name, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskPricingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.meterSquarePrice, meterSquarePrice) ||
                other.meterSquarePrice == meterSquarePrice) &&
            (identical(other.meterSquareArea, meterSquareArea) ||
                other.meterSquareArea == meterSquareArea) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, taskId, totalPrice,
      meterSquarePrice, meterSquareArea, name, key);

  /// Create a copy of TaskPricingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskPricingEntityImplCopyWith<_$TaskPricingEntityImpl> get copyWith =>
      __$$TaskPricingEntityImplCopyWithImpl<_$TaskPricingEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskPricingEntityImplToJson(
      this,
    );
  }
}

abstract class _TaskPricingEntity implements TaskPricingEntity {
  const factory _TaskPricingEntity(
      {required final String id,
      @JsonKey(name: 'task_id') required final int taskId,
      @JsonKey(name: 'total_price') final double totalPrice,
      @JsonKey(name: 'meter_square_price') final double meterSquarePrice,
      @JsonKey(name: 'meter_square_area') final double meterSquareArea,
      final String name,
      final String key}) = _$TaskPricingEntityImpl;

  factory _TaskPricingEntity.fromJson(Map<String, dynamic> json) =
      _$TaskPricingEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'task_id')
  int get taskId;
  @override
  @JsonKey(name: 'total_price')
  double get totalPrice;
  @override
  @JsonKey(name: 'meter_square_price')
  double get meterSquarePrice;
  @override
  @JsonKey(name: 'meter_square_area')
  double get meterSquareArea;
  @override
  String get name;
  @override
  String get key;

  /// Create a copy of TaskPricingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskPricingEntityImplCopyWith<_$TaskPricingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaItem _$MediaItemFromJson(Map<String, dynamic> json) {
  return _MediaItem.fromJson(json);
}

/// @nodoc
mixin _$MediaItem {
  String get path => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  UploadState get status => throw _privateConstructorUsedError;

  /// Serializes this MediaItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaItemCopyWith<MediaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaItemCopyWith<$Res> {
  factory $MediaItemCopyWith(MediaItem value, $Res Function(MediaItem) then) =
      _$MediaItemCopyWithImpl<$Res, MediaItem>;
  @useResult
  $Res call({String path, String uuid, UploadState status});
}

/// @nodoc
class _$MediaItemCopyWithImpl<$Res, $Val extends MediaItem>
    implements $MediaItemCopyWith<$Res> {
  _$MediaItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? uuid = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UploadState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaItemImplCopyWith<$Res>
    implements $MediaItemCopyWith<$Res> {
  factory _$$MediaItemImplCopyWith(
          _$MediaItemImpl value, $Res Function(_$MediaItemImpl) then) =
      __$$MediaItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String uuid, UploadState status});
}

/// @nodoc
class __$$MediaItemImplCopyWithImpl<$Res>
    extends _$MediaItemCopyWithImpl<$Res, _$MediaItemImpl>
    implements _$$MediaItemImplCopyWith<$Res> {
  __$$MediaItemImplCopyWithImpl(
      _$MediaItemImpl _value, $Res Function(_$MediaItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? uuid = null,
    Object? status = null,
  }) {
    return _then(_$MediaItemImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UploadState,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$MediaItemImpl implements _MediaItem {
  const _$MediaItemImpl(
      {required this.path,
      required this.uuid,
      this.status = UploadState.initail});

  factory _$MediaItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaItemImplFromJson(json);

  @override
  final String path;
  @override
  final String uuid;
  @override
  @JsonKey()
  final UploadState status;

  @override
  String toString() {
    return 'MediaItem(path: $path, uuid: $uuid, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaItemImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path, uuid, status);

  /// Create a copy of MediaItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaItemImplCopyWith<_$MediaItemImpl> get copyWith =>
      __$$MediaItemImplCopyWithImpl<_$MediaItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaItemImplToJson(
      this,
    );
  }
}

abstract class _MediaItem implements MediaItem {
  const factory _MediaItem(
      {required final String path,
      required final String uuid,
      final UploadState status}) = _$MediaItemImpl;

  factory _MediaItem.fromJson(Map<String, dynamic> json) =
      _$MediaItemImpl.fromJson;

  @override
  String get path;
  @override
  String get uuid;
  @override
  UploadState get status;

  /// Create a copy of MediaItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaItemImplCopyWith<_$MediaItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskItemEntity _$TaskItemEntityFromJson(Map<String, dynamic> json) {
  return _TaskItemEntity.fromJson(json);
}

/// @nodoc
mixin _$TaskItemEntity {
  TaskEntity get task => throw _privateConstructorUsedError;
  List<TaskPricingEntity> get pricing => throw _privateConstructorUsedError;
  List<MediaItem> get media => throw _privateConstructorUsedError;
  bool get isClosed => throw _privateConstructorUsedError;
  bool get isUploading => throw _privateConstructorUsedError;

  /// Serializes this TaskItemEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskItemEntityCopyWith<TaskItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskItemEntityCopyWith<$Res> {
  factory $TaskItemEntityCopyWith(
          TaskItemEntity value, $Res Function(TaskItemEntity) then) =
      _$TaskItemEntityCopyWithImpl<$Res, TaskItemEntity>;
  @useResult
  $Res call(
      {TaskEntity task,
      List<TaskPricingEntity> pricing,
      List<MediaItem> media,
      bool isClosed,
      bool isUploading});

  $TaskEntityCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskItemEntityCopyWithImpl<$Res, $Val extends TaskItemEntity>
    implements $TaskItemEntityCopyWith<$Res> {
  _$TaskItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? pricing = null,
    Object? media = null,
    Object? isClosed = null,
    Object? isUploading = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
      pricing: null == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as List<TaskPricingEntity>,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploading: null == isUploading
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of TaskItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskEntityCopyWith<$Res> get task {
    return $TaskEntityCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskItemEntityImplCopyWith<$Res>
    implements $TaskItemEntityCopyWith<$Res> {
  factory _$$TaskItemEntityImplCopyWith(_$TaskItemEntityImpl value,
          $Res Function(_$TaskItemEntityImpl) then) =
      __$$TaskItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TaskEntity task,
      List<TaskPricingEntity> pricing,
      List<MediaItem> media,
      bool isClosed,
      bool isUploading});

  @override
  $TaskEntityCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskItemEntityImplCopyWithImpl<$Res>
    extends _$TaskItemEntityCopyWithImpl<$Res, _$TaskItemEntityImpl>
    implements _$$TaskItemEntityImplCopyWith<$Res> {
  __$$TaskItemEntityImplCopyWithImpl(
      _$TaskItemEntityImpl _value, $Res Function(_$TaskItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? pricing = null,
    Object? media = null,
    Object? isClosed = null,
    Object? isUploading = null,
  }) {
    return _then(_$TaskItemEntityImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
      pricing: null == pricing
          ? _value._pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as List<TaskPricingEntity>,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploading: null == isUploading
          ? _value.isUploading
          : isUploading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$TaskItemEntityImpl implements _TaskItemEntity {
  const _$TaskItemEntityImpl(
      {required this.task,
      final List<TaskPricingEntity> pricing = const [],
      final List<MediaItem> media = const [],
      this.isClosed = false,
      this.isUploading = false})
      : _pricing = pricing,
        _media = media;

  factory _$TaskItemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskItemEntityImplFromJson(json);

  @override
  final TaskEntity task;
  final List<TaskPricingEntity> _pricing;
  @override
  @JsonKey()
  List<TaskPricingEntity> get pricing {
    if (_pricing is EqualUnmodifiableListView) return _pricing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pricing);
  }

  final List<MediaItem> _media;
  @override
  @JsonKey()
  List<MediaItem> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey()
  final bool isClosed;
  @override
  @JsonKey()
  final bool isUploading;

  @override
  String toString() {
    return 'TaskItemEntity(task: $task, pricing: $pricing, media: $media, isClosed: $isClosed, isUploading: $isUploading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskItemEntityImpl &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality().equals(other._pricing, _pricing) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            (identical(other.isUploading, isUploading) ||
                other.isUploading == isUploading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      task,
      const DeepCollectionEquality().hash(_pricing),
      const DeepCollectionEquality().hash(_media),
      isClosed,
      isUploading);

  /// Create a copy of TaskItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskItemEntityImplCopyWith<_$TaskItemEntityImpl> get copyWith =>
      __$$TaskItemEntityImplCopyWithImpl<_$TaskItemEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskItemEntityImplToJson(
      this,
    );
  }
}

abstract class _TaskItemEntity implements TaskItemEntity {
  const factory _TaskItemEntity(
      {required final TaskEntity task,
      final List<TaskPricingEntity> pricing,
      final List<MediaItem> media,
      final bool isClosed,
      final bool isUploading}) = _$TaskItemEntityImpl;

  factory _TaskItemEntity.fromJson(Map<String, dynamic> json) =
      _$TaskItemEntityImpl.fromJson;

  @override
  TaskEntity get task;
  @override
  List<TaskPricingEntity> get pricing;
  @override
  List<MediaItem> get media;
  @override
  bool get isClosed;
  @override
  bool get isUploading;

  /// Create a copy of TaskItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskItemEntityImplCopyWith<_$TaskItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalTasksList _$LocalTasksListFromJson(Map<String, dynamic> json) {
  return _LocalTasksList.fromJson(json);
}

/// @nodoc
mixin _$LocalTasksList {
  List<TaskItemEntity> get tasks => throw _privateConstructorUsedError;

  /// Serializes this LocalTasksList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalTasksList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalTasksListCopyWith<LocalTasksList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalTasksListCopyWith<$Res> {
  factory $LocalTasksListCopyWith(
          LocalTasksList value, $Res Function(LocalTasksList) then) =
      _$LocalTasksListCopyWithImpl<$Res, LocalTasksList>;
  @useResult
  $Res call({List<TaskItemEntity> tasks});
}

/// @nodoc
class _$LocalTasksListCopyWithImpl<$Res, $Val extends LocalTasksList>
    implements $LocalTasksListCopyWith<$Res> {
  _$LocalTasksListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalTasksList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskItemEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalTasksListImplCopyWith<$Res>
    implements $LocalTasksListCopyWith<$Res> {
  factory _$$LocalTasksListImplCopyWith(_$LocalTasksListImpl value,
          $Res Function(_$LocalTasksListImpl) then) =
      __$$LocalTasksListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskItemEntity> tasks});
}

/// @nodoc
class __$$LocalTasksListImplCopyWithImpl<$Res>
    extends _$LocalTasksListCopyWithImpl<$Res, _$LocalTasksListImpl>
    implements _$$LocalTasksListImplCopyWith<$Res> {
  __$$LocalTasksListImplCopyWithImpl(
      _$LocalTasksListImpl _value, $Res Function(_$LocalTasksListImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalTasksList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LocalTasksListImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskItemEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$LocalTasksListImpl implements _LocalTasksList {
  const _$LocalTasksListImpl({required final List<TaskItemEntity> tasks})
      : _tasks = tasks;

  factory _$LocalTasksListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalTasksListImplFromJson(json);

  final List<TaskItemEntity> _tasks;
  @override
  List<TaskItemEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'LocalTasksList(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalTasksListImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of LocalTasksList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalTasksListImplCopyWith<_$LocalTasksListImpl> get copyWith =>
      __$$LocalTasksListImplCopyWithImpl<_$LocalTasksListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalTasksListImplToJson(
      this,
    );
  }
}

abstract class _LocalTasksList implements LocalTasksList {
  const factory _LocalTasksList({required final List<TaskItemEntity> tasks}) =
      _$LocalTasksListImpl;

  factory _LocalTasksList.fromJson(Map<String, dynamic> json) =
      _$LocalTasksListImpl.fromJson;

  @override
  List<TaskItemEntity> get tasks;

  /// Create a copy of LocalTasksList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalTasksListImplCopyWith<_$LocalTasksListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
