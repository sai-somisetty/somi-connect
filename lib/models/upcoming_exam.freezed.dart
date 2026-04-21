// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpcomingExam _$UpcomingExamFromJson(Map<String, dynamic> json) {
  return _UpcomingExam.fromJson(json);
}

/// @nodoc
mixin _$UpcomingExam {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_type')
  String get examType => throw _privateConstructorUsedError;
  List<String> get subjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'syllabus_note')
  String? get syllabusNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_at')
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_rank')
  int? get classRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'class_size')
  int? get classSize => throw _privateConstructorUsedError;

  /// Serializes this UpcomingExam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpcomingExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpcomingExamCopyWith<UpcomingExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingExamCopyWith<$Res> {
  factory $UpcomingExamCopyWith(
    UpcomingExam value,
    $Res Function(UpcomingExam) then,
  ) = _$UpcomingExamCopyWithImpl<$Res, UpcomingExam>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'exam_type') String examType,
    List<String> subjects,
    @JsonKey(name: 'syllabus_note') String? syllabusNote,
    @JsonKey(name: 'scheduled_at') DateTime scheduledAt,
    String status,
    int? score,
    int? total,
    @JsonKey(name: 'class_rank') int? classRank,
    @JsonKey(name: 'class_size') int? classSize,
  });
}

/// @nodoc
class _$UpcomingExamCopyWithImpl<$Res, $Val extends UpcomingExam>
    implements $UpcomingExamCopyWith<$Res> {
  _$UpcomingExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpcomingExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? examType = null,
    Object? subjects = null,
    Object? syllabusNote = freezed,
    Object? scheduledAt = null,
    Object? status = null,
    Object? score = freezed,
    Object? total = freezed,
    Object? classRank = freezed,
    Object? classSize = freezed,
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
            examType: null == examType
                ? _value.examType
                : examType // ignore: cast_nullable_to_non_nullable
                      as String,
            subjects: null == subjects
                ? _value.subjects
                : subjects // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            syllabusNote: freezed == syllabusNote
                ? _value.syllabusNote
                : syllabusNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            scheduledAt: null == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int?,
            classRank: freezed == classRank
                ? _value.classRank
                : classRank // ignore: cast_nullable_to_non_nullable
                      as int?,
            classSize: freezed == classSize
                ? _value.classSize
                : classSize // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpcomingExamImplCopyWith<$Res>
    implements $UpcomingExamCopyWith<$Res> {
  factory _$$UpcomingExamImplCopyWith(
    _$UpcomingExamImpl value,
    $Res Function(_$UpcomingExamImpl) then,
  ) = __$$UpcomingExamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'exam_type') String examType,
    List<String> subjects,
    @JsonKey(name: 'syllabus_note') String? syllabusNote,
    @JsonKey(name: 'scheduled_at') DateTime scheduledAt,
    String status,
    int? score,
    int? total,
    @JsonKey(name: 'class_rank') int? classRank,
    @JsonKey(name: 'class_size') int? classSize,
  });
}

/// @nodoc
class __$$UpcomingExamImplCopyWithImpl<$Res>
    extends _$UpcomingExamCopyWithImpl<$Res, _$UpcomingExamImpl>
    implements _$$UpcomingExamImplCopyWith<$Res> {
  __$$UpcomingExamImplCopyWithImpl(
    _$UpcomingExamImpl _value,
    $Res Function(_$UpcomingExamImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpcomingExam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? examType = null,
    Object? subjects = null,
    Object? syllabusNote = freezed,
    Object? scheduledAt = null,
    Object? status = null,
    Object? score = freezed,
    Object? total = freezed,
    Object? classRank = freezed,
    Object? classSize = freezed,
  }) {
    return _then(
      _$UpcomingExamImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        examType: null == examType
            ? _value.examType
            : examType // ignore: cast_nullable_to_non_nullable
                  as String,
        subjects: null == subjects
            ? _value._subjects
            : subjects // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        syllabusNote: freezed == syllabusNote
            ? _value.syllabusNote
            : syllabusNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        scheduledAt: null == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int?,
        classRank: freezed == classRank
            ? _value.classRank
            : classRank // ignore: cast_nullable_to_non_nullable
                  as int?,
        classSize: freezed == classSize
            ? _value.classSize
            : classSize // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingExamImpl implements _UpcomingExam {
  const _$UpcomingExamImpl({
    required this.id,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'exam_type') required this.examType,
    required final List<String> subjects,
    @JsonKey(name: 'syllabus_note') this.syllabusNote,
    @JsonKey(name: 'scheduled_at') required this.scheduledAt,
    required this.status,
    this.score,
    this.total,
    @JsonKey(name: 'class_rank') this.classRank,
    @JsonKey(name: 'class_size') this.classSize,
  }) : _subjects = subjects;

  factory _$UpcomingExamImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingExamImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'exam_type')
  final String examType;
  final List<String> _subjects;
  @override
  List<String> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  @JsonKey(name: 'syllabus_note')
  final String? syllabusNote;
  @override
  @JsonKey(name: 'scheduled_at')
  final DateTime scheduledAt;
  @override
  final String status;
  @override
  final int? score;
  @override
  final int? total;
  @override
  @JsonKey(name: 'class_rank')
  final int? classRank;
  @override
  @JsonKey(name: 'class_size')
  final int? classSize;

  @override
  String toString() {
    return 'UpcomingExam(id: $id, studentId: $studentId, examType: $examType, subjects: $subjects, syllabusNote: $syllabusNote, scheduledAt: $scheduledAt, status: $status, score: $score, total: $total, classRank: $classRank, classSize: $classSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingExamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.examType, examType) ||
                other.examType == examType) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.syllabusNote, syllabusNote) ||
                other.syllabusNote == syllabusNote) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.classRank, classRank) ||
                other.classRank == classRank) &&
            (identical(other.classSize, classSize) ||
                other.classSize == classSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    examType,
    const DeepCollectionEquality().hash(_subjects),
    syllabusNote,
    scheduledAt,
    status,
    score,
    total,
    classRank,
    classSize,
  );

  /// Create a copy of UpcomingExam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingExamImplCopyWith<_$UpcomingExamImpl> get copyWith =>
      __$$UpcomingExamImplCopyWithImpl<_$UpcomingExamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingExamImplToJson(this);
  }
}

abstract class _UpcomingExam implements UpcomingExam {
  const factory _UpcomingExam({
    required final String id,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'exam_type') required final String examType,
    required final List<String> subjects,
    @JsonKey(name: 'syllabus_note') final String? syllabusNote,
    @JsonKey(name: 'scheduled_at') required final DateTime scheduledAt,
    required final String status,
    final int? score,
    final int? total,
    @JsonKey(name: 'class_rank') final int? classRank,
    @JsonKey(name: 'class_size') final int? classSize,
  }) = _$UpcomingExamImpl;

  factory _UpcomingExam.fromJson(Map<String, dynamic> json) =
      _$UpcomingExamImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'exam_type')
  String get examType;
  @override
  List<String> get subjects;
  @override
  @JsonKey(name: 'syllabus_note')
  String? get syllabusNote;
  @override
  @JsonKey(name: 'scheduled_at')
  DateTime get scheduledAt;
  @override
  String get status;
  @override
  int? get score;
  @override
  int? get total;
  @override
  @JsonKey(name: 'class_rank')
  int? get classRank;
  @override
  @JsonKey(name: 'class_size')
  int? get classSize;

  /// Create a copy of UpcomingExam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpcomingExamImplCopyWith<_$UpcomingExamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
