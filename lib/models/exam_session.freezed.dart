// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExamSession _$ExamSessionFromJson(Map<String, dynamic> json) {
  return _ExamSession.fromJson(json);
}

/// @nodoc
mixin _$ExamSession {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_type')
  String get examType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'kiosk_locked')
  bool get kioskLocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int? get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'answered_count')
  int? get answeredCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_pin_verified')
  bool get parentPinVerified => throw _privateConstructorUsedError;

  /// Serializes this ExamSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExamSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExamSessionCopyWith<ExamSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamSessionCopyWith<$Res> {
  factory $ExamSessionCopyWith(
    ExamSession value,
    $Res Function(ExamSession) then,
  ) = _$ExamSessionCopyWithImpl<$Res, ExamSession>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'exam_type') String examType,
    String status,
    @JsonKey(name: 'kiosk_locked') bool kioskLocked,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    @JsonKey(name: 'answered_count') int? answeredCount,
    @JsonKey(name: 'parent_pin_verified') bool parentPinVerified,
  });
}

/// @nodoc
class _$ExamSessionCopyWithImpl<$Res, $Val extends ExamSession>
    implements $ExamSessionCopyWith<$Res> {
  _$ExamSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExamSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? examType = null,
    Object? status = null,
    Object? kioskLocked = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? totalQuestions = freezed,
    Object? answeredCount = freezed,
    Object? parentPinVerified = null,
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
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            kioskLocked: null == kioskLocked
                ? _value.kioskLocked
                : kioskLocked // ignore: cast_nullable_to_non_nullable
                      as bool,
            startedAt: freezed == startedAt
                ? _value.startedAt
                : startedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endedAt: freezed == endedAt
                ? _value.endedAt
                : endedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            totalQuestions: freezed == totalQuestions
                ? _value.totalQuestions
                : totalQuestions // ignore: cast_nullable_to_non_nullable
                      as int?,
            answeredCount: freezed == answeredCount
                ? _value.answeredCount
                : answeredCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            parentPinVerified: null == parentPinVerified
                ? _value.parentPinVerified
                : parentPinVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExamSessionImplCopyWith<$Res>
    implements $ExamSessionCopyWith<$Res> {
  factory _$$ExamSessionImplCopyWith(
    _$ExamSessionImpl value,
    $Res Function(_$ExamSessionImpl) then,
  ) = __$$ExamSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'exam_type') String examType,
    String status,
    @JsonKey(name: 'kiosk_locked') bool kioskLocked,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    @JsonKey(name: 'answered_count') int? answeredCount,
    @JsonKey(name: 'parent_pin_verified') bool parentPinVerified,
  });
}

/// @nodoc
class __$$ExamSessionImplCopyWithImpl<$Res>
    extends _$ExamSessionCopyWithImpl<$Res, _$ExamSessionImpl>
    implements _$$ExamSessionImplCopyWith<$Res> {
  __$$ExamSessionImplCopyWithImpl(
    _$ExamSessionImpl _value,
    $Res Function(_$ExamSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExamSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? examType = null,
    Object? status = null,
    Object? kioskLocked = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? totalQuestions = freezed,
    Object? answeredCount = freezed,
    Object? parentPinVerified = null,
  }) {
    return _then(
      _$ExamSessionImpl(
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
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        kioskLocked: null == kioskLocked
            ? _value.kioskLocked
            : kioskLocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        startedAt: freezed == startedAt
            ? _value.startedAt
            : startedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endedAt: freezed == endedAt
            ? _value.endedAt
            : endedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        totalQuestions: freezed == totalQuestions
            ? _value.totalQuestions
            : totalQuestions // ignore: cast_nullable_to_non_nullable
                  as int?,
        answeredCount: freezed == answeredCount
            ? _value.answeredCount
            : answeredCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        parentPinVerified: null == parentPinVerified
            ? _value.parentPinVerified
            : parentPinVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamSessionImpl implements _ExamSession {
  const _$ExamSessionImpl({
    required this.id,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'exam_type') required this.examType,
    required this.status,
    @JsonKey(name: 'kiosk_locked') required this.kioskLocked,
    @JsonKey(name: 'started_at') this.startedAt,
    @JsonKey(name: 'ended_at') this.endedAt,
    @JsonKey(name: 'total_questions') this.totalQuestions,
    @JsonKey(name: 'answered_count') this.answeredCount,
    @JsonKey(name: 'parent_pin_verified') required this.parentPinVerified,
  });

  factory _$ExamSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamSessionImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'exam_type')
  final String examType;
  @override
  final String status;
  @override
  @JsonKey(name: 'kiosk_locked')
  final bool kioskLocked;
  @override
  @JsonKey(name: 'started_at')
  final DateTime? startedAt;
  @override
  @JsonKey(name: 'ended_at')
  final DateTime? endedAt;
  @override
  @JsonKey(name: 'total_questions')
  final int? totalQuestions;
  @override
  @JsonKey(name: 'answered_count')
  final int? answeredCount;
  @override
  @JsonKey(name: 'parent_pin_verified')
  final bool parentPinVerified;

  @override
  String toString() {
    return 'ExamSession(id: $id, studentId: $studentId, examType: $examType, status: $status, kioskLocked: $kioskLocked, startedAt: $startedAt, endedAt: $endedAt, totalQuestions: $totalQuestions, answeredCount: $answeredCount, parentPinVerified: $parentPinVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.examType, examType) ||
                other.examType == examType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.kioskLocked, kioskLocked) ||
                other.kioskLocked == kioskLocked) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.answeredCount, answeredCount) ||
                other.answeredCount == answeredCount) &&
            (identical(other.parentPinVerified, parentPinVerified) ||
                other.parentPinVerified == parentPinVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    examType,
    status,
    kioskLocked,
    startedAt,
    endedAt,
    totalQuestions,
    answeredCount,
    parentPinVerified,
  );

  /// Create a copy of ExamSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamSessionImplCopyWith<_$ExamSessionImpl> get copyWith =>
      __$$ExamSessionImplCopyWithImpl<_$ExamSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamSessionImplToJson(this);
  }
}

abstract class _ExamSession implements ExamSession {
  const factory _ExamSession({
    required final String id,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'exam_type') required final String examType,
    required final String status,
    @JsonKey(name: 'kiosk_locked') required final bool kioskLocked,
    @JsonKey(name: 'started_at') final DateTime? startedAt,
    @JsonKey(name: 'ended_at') final DateTime? endedAt,
    @JsonKey(name: 'total_questions') final int? totalQuestions,
    @JsonKey(name: 'answered_count') final int? answeredCount,
    @JsonKey(name: 'parent_pin_verified') required final bool parentPinVerified,
  }) = _$ExamSessionImpl;

  factory _ExamSession.fromJson(Map<String, dynamic> json) =
      _$ExamSessionImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'exam_type')
  String get examType;
  @override
  String get status;
  @override
  @JsonKey(name: 'kiosk_locked')
  bool get kioskLocked;
  @override
  @JsonKey(name: 'started_at')
  DateTime? get startedAt;
  @override
  @JsonKey(name: 'ended_at')
  DateTime? get endedAt;
  @override
  @JsonKey(name: 'total_questions')
  int? get totalQuestions;
  @override
  @JsonKey(name: 'answered_count')
  int? get answeredCount;
  @override
  @JsonKey(name: 'parent_pin_verified')
  bool get parentPinVerified;

  /// Create a copy of ExamSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExamSessionImplCopyWith<_$ExamSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
