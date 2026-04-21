// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudyActivity _$StudyActivityFromJson(Map<String, dynamic> json) {
  return _StudyActivity.fromJson(json);
}

/// @nodoc
mixin _$StudyActivity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_date')
  DateTime get activityDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_type')
  String get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'chapter_id')
  String? get chapterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'concept_id')
  String? get conceptId => throw _privateConstructorUsedError;

  /// Serializes this StudyActivity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudyActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudyActivityCopyWith<StudyActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyActivityCopyWith<$Res> {
  factory $StudyActivityCopyWith(
    StudyActivity value,
    $Res Function(StudyActivity) then,
  ) = _$StudyActivityCopyWithImpl<$Res, StudyActivity>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'activity_date') DateTime activityDate,
    @JsonKey(name: 'activity_type') String activityType,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'chapter_id') String? chapterId,
    @JsonKey(name: 'concept_id') String? conceptId,
  });
}

/// @nodoc
class _$StudyActivityCopyWithImpl<$Res, $Val extends StudyActivity>
    implements $StudyActivityCopyWith<$Res> {
  _$StudyActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? activityDate = null,
    Object? activityType = null,
    Object? durationMinutes = freezed,
    Object? chapterId = freezed,
    Object? conceptId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            activityDate: null == activityDate
                ? _value.activityDate
                : activityDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            activityType: null == activityType
                ? _value.activityType
                : activityType // ignore: cast_nullable_to_non_nullable
                      as String,
            durationMinutes: freezed == durationMinutes
                ? _value.durationMinutes
                : durationMinutes // ignore: cast_nullable_to_non_nullable
                      as int?,
            chapterId: freezed == chapterId
                ? _value.chapterId
                : chapterId // ignore: cast_nullable_to_non_nullable
                      as String?,
            conceptId: freezed == conceptId
                ? _value.conceptId
                : conceptId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudyActivityImplCopyWith<$Res>
    implements $StudyActivityCopyWith<$Res> {
  factory _$$StudyActivityImplCopyWith(
    _$StudyActivityImpl value,
    $Res Function(_$StudyActivityImpl) then,
  ) = __$$StudyActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'activity_date') DateTime activityDate,
    @JsonKey(name: 'activity_type') String activityType,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
    @JsonKey(name: 'chapter_id') String? chapterId,
    @JsonKey(name: 'concept_id') String? conceptId,
  });
}

/// @nodoc
class __$$StudyActivityImplCopyWithImpl<$Res>
    extends _$StudyActivityCopyWithImpl<$Res, _$StudyActivityImpl>
    implements _$$StudyActivityImplCopyWith<$Res> {
  __$$StudyActivityImplCopyWithImpl(
    _$StudyActivityImpl _value,
    $Res Function(_$StudyActivityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudyActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? activityDate = null,
    Object? activityType = null,
    Object? durationMinutes = freezed,
    Object? chapterId = freezed,
    Object? conceptId = freezed,
  }) {
    return _then(
      _$StudyActivityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        activityDate: null == activityDate
            ? _value.activityDate
            : activityDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        activityType: null == activityType
            ? _value.activityType
            : activityType // ignore: cast_nullable_to_non_nullable
                  as String,
        durationMinutes: freezed == durationMinutes
            ? _value.durationMinutes
            : durationMinutes // ignore: cast_nullable_to_non_nullable
                  as int?,
        chapterId: freezed == chapterId
            ? _value.chapterId
            : chapterId // ignore: cast_nullable_to_non_nullable
                  as String?,
        conceptId: freezed == conceptId
            ? _value.conceptId
            : conceptId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyActivityImpl implements _StudyActivity {
  const _$StudyActivityImpl({
    required this.id,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'activity_date') required this.activityDate,
    @JsonKey(name: 'activity_type') required this.activityType,
    @JsonKey(name: 'duration_minutes') this.durationMinutes,
    @JsonKey(name: 'chapter_id') this.chapterId,
    @JsonKey(name: 'concept_id') this.conceptId,
  });

  factory _$StudyActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyActivityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'activity_date')
  final DateTime activityDate;
  @override
  @JsonKey(name: 'activity_type')
  final String activityType;
  @override
  @JsonKey(name: 'duration_minutes')
  final int? durationMinutes;
  @override
  @JsonKey(name: 'chapter_id')
  final String? chapterId;
  @override
  @JsonKey(name: 'concept_id')
  final String? conceptId;

  @override
  String toString() {
    return 'StudyActivity(id: $id, studentId: $studentId, activityDate: $activityDate, activityType: $activityType, durationMinutes: $durationMinutes, chapterId: $chapterId, conceptId: $conceptId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.activityDate, activityDate) ||
                other.activityDate == activityDate) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.chapterId, chapterId) ||
                other.chapterId == chapterId) &&
            (identical(other.conceptId, conceptId) ||
                other.conceptId == conceptId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    activityDate,
    activityType,
    durationMinutes,
    chapterId,
    conceptId,
  );

  /// Create a copy of StudyActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyActivityImplCopyWith<_$StudyActivityImpl> get copyWith =>
      __$$StudyActivityImplCopyWithImpl<_$StudyActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyActivityImplToJson(this);
  }
}

abstract class _StudyActivity implements StudyActivity {
  const factory _StudyActivity({
    required final String id,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'activity_date') required final DateTime activityDate,
    @JsonKey(name: 'activity_type') required final String activityType,
    @JsonKey(name: 'duration_minutes') final int? durationMinutes,
    @JsonKey(name: 'chapter_id') final String? chapterId,
    @JsonKey(name: 'concept_id') final String? conceptId,
  }) = _$StudyActivityImpl;

  factory _StudyActivity.fromJson(Map<String, dynamic> json) =
      _$StudyActivityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'activity_date')
  DateTime get activityDate;
  @override
  @JsonKey(name: 'activity_type')
  String get activityType;
  @override
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes;
  @override
  @JsonKey(name: 'chapter_id')
  String? get chapterId;
  @override
  @JsonKey(name: 'concept_id')
  String? get conceptId;

  /// Create a copy of StudyActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyActivityImplCopyWith<_$StudyActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
