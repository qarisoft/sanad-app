// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'p.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageData _$PageDataFromJson(Map<String, dynamic> json) {
  return _PageData.fromJson(json);
}

/// @nodoc
mixin _$PageData {
  String get path => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<TaskEntity> get data => throw _privateConstructorUsedError;

  /// Serializes this PageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageDataCopyWith<PageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageDataCopyWith<$Res> {
  factory $PageDataCopyWith(PageData value, $Res Function(PageData) then) =
      _$PageDataCopyWithImpl<$Res, PageData>;
  @useResult
  $Res call({String path, int id, List<TaskEntity> data});
}

/// @nodoc
class _$PageDataCopyWithImpl<$Res, $Val extends PageData>
    implements $PageDataCopyWith<$Res> {
  _$PageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageDataImplCopyWith<$Res>
    implements $PageDataCopyWith<$Res> {
  factory _$$PageDataImplCopyWith(
          _$PageDataImpl value, $Res Function(_$PageDataImpl) then) =
      __$$PageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, int id, List<TaskEntity> data});
}

/// @nodoc
class __$$PageDataImplCopyWithImpl<$Res>
    extends _$PageDataCopyWithImpl<$Res, _$PageDataImpl>
    implements _$$PageDataImplCopyWith<$Res> {
  __$$PageDataImplCopyWithImpl(
      _$PageDataImpl _value, $Res Function(_$PageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? id = null,
    Object? data = null,
  }) {
    return _then(_$PageDataImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PageDataImpl with DiagnosticableTreeMixin implements _PageData {
  const _$PageDataImpl(
      {required this.path,
      required this.id,
      final List<TaskEntity> data = const []})
      : _data = data;

  factory _$PageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageDataImplFromJson(json);

  @override
  final String path;
  @override
  final int id;
  final List<TaskEntity> _data;
  @override
  @JsonKey()
  List<TaskEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageData(path: $path, id: $id, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageData'))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageDataImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, path, id, const DeepCollectionEquality().hash(_data));

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageDataImplCopyWith<_$PageDataImpl> get copyWith =>
      __$$PageDataImplCopyWithImpl<_$PageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageDataImplToJson(
      this,
    );
  }
}

abstract class _PageData implements PageData {
  const factory _PageData(
      {required final String path,
      required final int id,
      final List<TaskEntity> data}) = _$PageDataImpl;

  factory _PageData.fromJson(Map<String, dynamic> json) =
      _$PageDataImpl.fromJson;

  @override
  String get path;
  @override
  int get id;
  @override
  List<TaskEntity> get data;

  /// Create a copy of PageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageDataImplCopyWith<_$PageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  int get total => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<PageData> get data => throw _privateConstructorUsedError;

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({int total, bool isLoading, List<PageData> data});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? isLoading = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PageData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, bool isLoading, List<PageData> data});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? isLoading = null,
    Object? data = null,
  }) {
    return _then(_$HomeStateImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PageData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$HomeStateImpl with DiagnosticableTreeMixin implements _HomeState {
  const _$HomeStateImpl(
      {this.total = 0,
      this.isLoading = true,
      final List<PageData> data = const []})
      : _data = data;

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final bool isLoading;
  final List<PageData> _data;
  @override
  @JsonKey()
  List<PageData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(total: $total, isLoading: $isLoading, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, isLoading,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final int total,
      final bool isLoading,
      final List<PageData> data}) = _$HomeStateImpl;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  int get total;
  @override
  bool get isLoading;
  @override
  List<PageData> get data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
