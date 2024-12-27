// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedData _$PaginatedDataFromJson(Map<String, dynamic> json) {
  return _PaginatedData.fromJson(json);
}

/// @nodoc
mixin _$PaginatedData {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  List<TaskEntity> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this PaginatedData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedDataCopyWith<PaginatedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataCopyWith<$Res> {
  factory $PaginatedDataCopyWith(
          PaginatedData value, $Res Function(PaginatedData) then) =
      _$PaginatedDataCopyWithImpl<$Res, PaginatedData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      String? path,
      List<TaskEntity> data,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int to,
      int total});
}

/// @nodoc
class _$PaginatedDataCopyWithImpl<$Res, $Val extends PaginatedData>
    implements $PaginatedDataCopyWith<$Res> {
  _$PaginatedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? path = freezed,
    Object? data = null,
    Object? nextPageUrl = freezed,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedDataImplCopyWith<$Res>
    implements $PaginatedDataCopyWith<$Res> {
  factory _$$PaginatedDataImplCopyWith(
          _$PaginatedDataImpl value, $Res Function(_$PaginatedDataImpl) then) =
      __$$PaginatedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      String? path,
      List<TaskEntity> data,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int to,
      int total});
}

/// @nodoc
class __$$PaginatedDataImplCopyWithImpl<$Res>
    extends _$PaginatedDataCopyWithImpl<$Res, _$PaginatedDataImpl>
    implements _$$PaginatedDataImplCopyWith<$Res> {
  __$$PaginatedDataImplCopyWithImpl(
      _$PaginatedDataImpl _value, $Res Function(_$PaginatedDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? path = freezed,
    Object? data = null,
    Object? nextPageUrl = freezed,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_$PaginatedDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedDataImpl implements _PaginatedData {
  const _$PaginatedDataImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      this.path,
      final List<TaskEntity> data = const [],
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      @JsonKey(name: "per_page") this.perPage = 1,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to = 0,
      this.total = 0})
      : _data = data;

  factory _$PaginatedDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  final String? path;
  final List<TaskEntity> _data;
  @override
  @JsonKey()
  List<TaskEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  @JsonKey()
  final int to;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'PaginatedData(currentPage: $currentPage, path: $path, data: $data, nextPageUrl: $nextPageUrl, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      path,
      const DeepCollectionEquality().hash(_data),
      nextPageUrl,
      perPage,
      prevPageUrl,
      to,
      total);

  /// Create a copy of PaginatedData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDataImplCopyWith<_$PaginatedDataImpl> get copyWith =>
      __$$PaginatedDataImplCopyWithImpl<_$PaginatedDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedDataImplToJson(
      this,
    );
  }
}

abstract class _PaginatedData implements PaginatedData {
  const factory _PaginatedData(
      {@JsonKey(name: 'current_page') final int? currentPage,
      final String? path,
      final List<TaskEntity> data,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      @JsonKey(name: "per_page") final int perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int to,
      final int total}) = _$PaginatedDataImpl;

  factory _PaginatedData.fromJson(Map<String, dynamic> json) =
      _$PaginatedDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  String? get path;
  @override
  List<TaskEntity> get data;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
  @override
  int get to;
  @override
  int get total;

  /// Create a copy of PaginatedData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedDataImplCopyWith<_$PaginatedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  PaginatedData get data => throw _privateConstructorUsedError;

  /// Serializes this HomeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
  @useResult
  $Res call({int status, String message, PaginatedData data});

  $PaginatedDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedData,
    ) as $Val);
  }

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedDataCopyWith<$Res> get data {
    return $PaginatedDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeResponseImplCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$HomeResponseImplCopyWith(
          _$HomeResponseImpl value, $Res Function(_$HomeResponseImpl) then) =
      __$$HomeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, PaginatedData data});

  @override
  $PaginatedDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeResponseImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseImpl>
    implements _$$HomeResponseImplCopyWith<$Res> {
  __$$HomeResponseImplCopyWithImpl(
      _$HomeResponseImpl _value, $Res Function(_$HomeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$HomeResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginatedData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseImpl implements _HomeResponse {
  const _$HomeResponseImpl(
      {this.status = 1010,
      this.message = '',
      this.data = const PaginatedData()});

  factory _$HomeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final PaginatedData data;

  @override
  String toString() {
    return 'HomeResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      __$$HomeResponseImplCopyWithImpl<_$HomeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeResponse implements HomeResponse {
  const factory _HomeResponse(
      {final int status,
      final String message,
      final PaginatedData data}) = _$HomeResponseImpl;

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$HomeResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  PaginatedData get data;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseImplCopyWith<_$HomeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
