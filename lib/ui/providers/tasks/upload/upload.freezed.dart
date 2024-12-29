// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadTaskState _$UploadTaskStateFromJson(Map<String, dynamic> json) {
  return _UploadTaskState.fromJson(json);
}

/// @nodoc
mixin _$UploadTaskState {
  int get taskId => throw _privateConstructorUsedError;
  DateTime? get uploadedAt => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get mediaCount => throw _privateConstructorUsedError;
  bool get isUploaded => throw _privateConstructorUsedError;
  List<MediaItem> get media => throw _privateConstructorUsedError;
  double get fraction => throw _privateConstructorUsedError;

  /// Serializes this UploadTaskState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadTaskStateCopyWith<UploadTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadTaskStateCopyWith<$Res> {
  factory $UploadTaskStateCopyWith(
          UploadTaskState value, $Res Function(UploadTaskState) then) =
      _$UploadTaskStateCopyWithImpl<$Res, UploadTaskState>;
  @useResult
  $Res call(
      {int taskId,
      DateTime? uploadedAt,
      int id,
      int mediaCount,
      bool isUploaded,
      List<MediaItem> media,
      double fraction});
}

/// @nodoc
class _$UploadTaskStateCopyWithImpl<$Res, $Val extends UploadTaskState>
    implements $UploadTaskStateCopyWith<$Res> {
  _$UploadTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? uploadedAt = freezed,
    Object? id = null,
    Object? mediaCount = null,
    Object? isUploaded = null,
    Object? media = null,
    Object? fraction = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mediaCount: null == mediaCount
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int,
      isUploaded: null == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
      fraction: null == fraction
          ? _value.fraction
          : fraction // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadTaskStateImplCopyWith<$Res>
    implements $UploadTaskStateCopyWith<$Res> {
  factory _$$UploadTaskStateImplCopyWith(_$UploadTaskStateImpl value,
          $Res Function(_$UploadTaskStateImpl) then) =
      __$$UploadTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int taskId,
      DateTime? uploadedAt,
      int id,
      int mediaCount,
      bool isUploaded,
      List<MediaItem> media,
      double fraction});
}

/// @nodoc
class __$$UploadTaskStateImplCopyWithImpl<$Res>
    extends _$UploadTaskStateCopyWithImpl<$Res, _$UploadTaskStateImpl>
    implements _$$UploadTaskStateImplCopyWith<$Res> {
  __$$UploadTaskStateImplCopyWithImpl(
      _$UploadTaskStateImpl _value, $Res Function(_$UploadTaskStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? uploadedAt = freezed,
    Object? id = null,
    Object? mediaCount = null,
    Object? isUploaded = null,
    Object? media = null,
    Object? fraction = null,
  }) {
    return _then(_$UploadTaskStateImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mediaCount: null == mediaCount
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int,
      isUploaded: null == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as bool,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>,
      fraction: null == fraction
          ? _value.fraction
          : fraction // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UploadTaskStateImpl
    with DiagnosticableTreeMixin
    implements _UploadTaskState {
  const _$UploadTaskStateImpl(
      {required this.taskId,
      this.uploadedAt,
      this.id = 0,
      this.mediaCount = 0,
      this.isUploaded = false,
      final List<MediaItem> media = const [],
      this.fraction = 0.0})
      : _media = media;

  factory _$UploadTaskStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadTaskStateImplFromJson(json);

  @override
  final int taskId;
  @override
  final DateTime? uploadedAt;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int mediaCount;
  @override
  @JsonKey()
  final bool isUploaded;
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
  final double fraction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadTaskState(taskId: $taskId, uploadedAt: $uploadedAt, id: $id, mediaCount: $mediaCount, isUploaded: $isUploaded, media: $media, fraction: $fraction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadTaskState'))
      ..add(DiagnosticsProperty('taskId', taskId))
      ..add(DiagnosticsProperty('uploadedAt', uploadedAt))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('mediaCount', mediaCount))
      ..add(DiagnosticsProperty('isUploaded', isUploaded))
      ..add(DiagnosticsProperty('media', media))
      ..add(DiagnosticsProperty('fraction', fraction));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadTaskStateImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mediaCount, mediaCount) ||
                other.mediaCount == mediaCount) &&
            (identical(other.isUploaded, isUploaded) ||
                other.isUploaded == isUploaded) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.fraction, fraction) ||
                other.fraction == fraction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskId,
      uploadedAt,
      id,
      mediaCount,
      isUploaded,
      const DeepCollectionEquality().hash(_media),
      fraction);

  /// Create a copy of UploadTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadTaskStateImplCopyWith<_$UploadTaskStateImpl> get copyWith =>
      __$$UploadTaskStateImplCopyWithImpl<_$UploadTaskStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadTaskStateImplToJson(
      this,
    );
  }
}

abstract class _UploadTaskState implements UploadTaskState {
  const factory _UploadTaskState(
      {required final int taskId,
      final DateTime? uploadedAt,
      final int id,
      final int mediaCount,
      final bool isUploaded,
      final List<MediaItem> media,
      final double fraction}) = _$UploadTaskStateImpl;

  factory _UploadTaskState.fromJson(Map<String, dynamic> json) =
      _$UploadTaskStateImpl.fromJson;

  @override
  int get taskId;
  @override
  DateTime? get uploadedAt;
  @override
  int get id;
  @override
  int get mediaCount;
  @override
  bool get isUploaded;
  @override
  List<MediaItem> get media;
  @override
  double get fraction;

  /// Create a copy of UploadTaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadTaskStateImplCopyWith<_$UploadTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadAttemts _$UploadAttemtsFromJson(Map<String, dynamic> json) {
  return _UploadAttemts.fromJson(json);
}

/// @nodoc
mixin _$UploadAttemts {
  List<UploadTaskState> get uploads => throw _privateConstructorUsedError;
  UploadTaskState? get current => throw _privateConstructorUsedError;

  /// Serializes this UploadAttemts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadAttemts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadAttemtsCopyWith<UploadAttemts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadAttemtsCopyWith<$Res> {
  factory $UploadAttemtsCopyWith(
          UploadAttemts value, $Res Function(UploadAttemts) then) =
      _$UploadAttemtsCopyWithImpl<$Res, UploadAttemts>;
  @useResult
  $Res call({List<UploadTaskState> uploads, UploadTaskState? current});

  $UploadTaskStateCopyWith<$Res>? get current;
}

/// @nodoc
class _$UploadAttemtsCopyWithImpl<$Res, $Val extends UploadAttemts>
    implements $UploadAttemtsCopyWith<$Res> {
  _$UploadAttemtsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadAttemts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploads = null,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      uploads: null == uploads
          ? _value.uploads
          : uploads // ignore: cast_nullable_to_non_nullable
              as List<UploadTaskState>,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as UploadTaskState?,
    ) as $Val);
  }

  /// Create a copy of UploadAttemts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploadTaskStateCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $UploadTaskStateCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UploadAttemtsImplCopyWith<$Res>
    implements $UploadAttemtsCopyWith<$Res> {
  factory _$$UploadAttemtsImplCopyWith(
          _$UploadAttemtsImpl value, $Res Function(_$UploadAttemtsImpl) then) =
      __$$UploadAttemtsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UploadTaskState> uploads, UploadTaskState? current});

  @override
  $UploadTaskStateCopyWith<$Res>? get current;
}

/// @nodoc
class __$$UploadAttemtsImplCopyWithImpl<$Res>
    extends _$UploadAttemtsCopyWithImpl<$Res, _$UploadAttemtsImpl>
    implements _$$UploadAttemtsImplCopyWith<$Res> {
  __$$UploadAttemtsImplCopyWithImpl(
      _$UploadAttemtsImpl _value, $Res Function(_$UploadAttemtsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadAttemts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploads = null,
    Object? current = freezed,
  }) {
    return _then(_$UploadAttemtsImpl(
      uploads: null == uploads
          ? _value._uploads
          : uploads // ignore: cast_nullable_to_non_nullable
              as List<UploadTaskState>,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as UploadTaskState?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UploadAttemtsImpl
    with DiagnosticableTreeMixin
    implements _UploadAttemts {
  const _$UploadAttemtsImpl(
      {final List<UploadTaskState> uploads = const [], this.current})
      : _uploads = uploads;

  factory _$UploadAttemtsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadAttemtsImplFromJson(json);

  final List<UploadTaskState> _uploads;
  @override
  @JsonKey()
  List<UploadTaskState> get uploads {
    if (_uploads is EqualUnmodifiableListView) return _uploads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uploads);
  }

  @override
  final UploadTaskState? current;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadAttemts(uploads: $uploads, current: $current)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadAttemts'))
      ..add(DiagnosticsProperty('uploads', uploads))
      ..add(DiagnosticsProperty('current', current));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAttemtsImpl &&
            const DeepCollectionEquality().equals(other._uploads, _uploads) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_uploads), current);

  /// Create a copy of UploadAttemts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAttemtsImplCopyWith<_$UploadAttemtsImpl> get copyWith =>
      __$$UploadAttemtsImplCopyWithImpl<_$UploadAttemtsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadAttemtsImplToJson(
      this,
    );
  }
}

abstract class _UploadAttemts implements UploadAttemts {
  const factory _UploadAttemts(
      {final List<UploadTaskState> uploads,
      final UploadTaskState? current}) = _$UploadAttemtsImpl;

  factory _UploadAttemts.fromJson(Map<String, dynamic> json) =
      _$UploadAttemtsImpl.fromJson;

  @override
  List<UploadTaskState> get uploads;
  @override
  UploadTaskState? get current;

  /// Create a copy of UploadAttemts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadAttemtsImplCopyWith<_$UploadAttemtsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
