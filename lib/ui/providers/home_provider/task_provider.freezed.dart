// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeTaskState _$HomeTaskStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return InitailState.fromJson(json);
    case 'data':
      return DataState.fromJson(json);
    case 'loading':
      return LoadingState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HomeTaskState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HomeTaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity> data) data,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity> data)? data,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity> data)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailState value) initial,
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailState value)? initial,
    TResult? Function(DataState value)? data,
    TResult? Function(LoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this HomeTaskState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTaskStateCopyWith<$Res> {
  factory $HomeTaskStateCopyWith(
          HomeTaskState value, $Res Function(HomeTaskState) then) =
      _$HomeTaskStateCopyWithImpl<$Res, HomeTaskState>;
}

/// @nodoc
class _$HomeTaskStateCopyWithImpl<$Res, $Val extends HomeTaskState>
    implements $HomeTaskStateCopyWith<$Res> {
  _$HomeTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitailStateImplCopyWith<$Res> {
  factory _$$InitailStateImplCopyWith(
          _$InitailStateImpl value, $Res Function(_$InitailStateImpl) then) =
      __$$InitailStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitailStateImplCopyWithImpl<$Res>
    extends _$HomeTaskStateCopyWithImpl<$Res, _$InitailStateImpl>
    implements _$$InitailStateImplCopyWith<$Res> {
  __$$InitailStateImplCopyWithImpl(
      _$InitailStateImpl _value, $Res Function(_$InitailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InitailStateImpl implements InitailState {
  const _$InitailStateImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$InitailStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitailStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeTaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitailStateImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity> data) data,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity> data)? data,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity> data)? data,
    TResult Function()? loading,
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
    required TResult Function(InitailState value) initial,
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailState value)? initial,
    TResult? Function(DataState value)? data,
    TResult? Function(LoadingState value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitailStateImplToJson(
      this,
    );
  }
}

abstract class InitailState implements HomeTaskState {
  const factory InitailState() = _$InitailStateImpl;

  factory InitailState.fromJson(Map<String, dynamic> json) =
      _$InitailStateImpl.fromJson;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<$Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl value, $Res Function(_$DataStateImpl) then) =
      __$$DataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> data});
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<$Res>
    extends _$HomeTaskStateCopyWithImpl<$Res, _$DataStateImpl>
    implements _$$DataStateImplCopyWith<$Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl _value, $Res Function(_$DataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DataStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataStateImpl implements DataState {
  const _$DataStateImpl(
      {required final List<TaskEntity> data, final String? $type})
      : _data = data,
        $type = $type ?? 'data';

  factory _$DataStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataStateImplFromJson(json);

  final List<TaskEntity> _data;
  @override
  List<TaskEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeTaskState.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HomeTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      __$$DataStateImplCopyWithImpl<_$DataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity> data) data,
    required TResult Function() loading,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity> data)? data,
    TResult? Function()? loading,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity> data)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailState value) initial,
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailState value)? initial,
    TResult? Function(DataState value)? data,
    TResult? Function(LoadingState value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DataStateImplToJson(
      this,
    );
  }
}

abstract class DataState implements HomeTaskState {
  const factory DataState({required final List<TaskEntity> data}) =
      _$DataStateImpl;

  factory DataState.fromJson(Map<String, dynamic> json) =
      _$DataStateImpl.fromJson;

  List<TaskEntity> get data;

  /// Create a copy of HomeTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataStateImplCopyWith<_$DataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$HomeTaskStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl({final String? $type}) : $type = $type ?? 'loading';

  factory _$LoadingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeTaskState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity> data) data,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity> data)? data,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity> data)? data,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitailState value) initial,
    required TResult Function(DataState value) data,
    required TResult Function(LoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitailState value)? initial,
    TResult? Function(DataState value)? data,
    TResult? Function(LoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitailState value)? initial,
    TResult Function(DataState value)? data,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingStateImplToJson(
      this,
    );
  }
}

abstract class LoadingState implements HomeTaskState {
  const factory LoadingState() = _$LoadingStateImpl;

  factory LoadingState.fromJson(Map<String, dynamic> json) =
      _$LoadingStateImpl.fromJson;
}
