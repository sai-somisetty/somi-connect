// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_insight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyInsight _$DailyInsightFromJson(Map<String, dynamic> json) {
  return _DailyInsight.fromJson(json);
}

/// @nodoc
mixin _$DailyInsight {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'for_date')
  DateTime get forDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'insight_type')
  String get insightType => throw _privateConstructorUsedError;
  String get severity =>
      throw _privateConstructorUsedError; // red / amber / gold / green
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_exam_id')
  String? get relatedExamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_subject')
  String? get relatedSubject => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_cta')
  String? get actionCta => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_detail')
  String? get actionDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_since_event')
  int? get daysSinceEvent => throw _privateConstructorUsedError;

  /// Serializes this DailyInsight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyInsightCopyWith<DailyInsight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyInsightCopyWith<$Res> {
  factory $DailyInsightCopyWith(
    DailyInsight value,
    $Res Function(DailyInsight) then,
  ) = _$DailyInsightCopyWithImpl<$Res, DailyInsight>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'parent_id') String parentId,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'for_date') DateTime forDate,
    @JsonKey(name: 'insight_type') String insightType,
    String severity,
    int priority,
    @JsonKey(name: 'related_exam_id') String? relatedExamId,
    @JsonKey(name: 'related_subject') String? relatedSubject,
    @JsonKey(name: 'status_label') String? statusLabel,
    String headline,
    String? body,
    @JsonKey(name: 'action_cta') String? actionCta,
    @JsonKey(name: 'action_detail') String? actionDetail,
    @JsonKey(name: 'days_since_event') int? daysSinceEvent,
  });
}

/// @nodoc
class _$DailyInsightCopyWithImpl<$Res, $Val extends DailyInsight>
    implements $DailyInsightCopyWith<$Res> {
  _$DailyInsightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? studentId = null,
    Object? forDate = null,
    Object? insightType = null,
    Object? severity = null,
    Object? priority = null,
    Object? relatedExamId = freezed,
    Object? relatedSubject = freezed,
    Object? statusLabel = freezed,
    Object? headline = null,
    Object? body = freezed,
    Object? actionCta = freezed,
    Object? actionDetail = freezed,
    Object? daysSinceEvent = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            forDate: null == forDate
                ? _value.forDate
                : forDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            insightType: null == insightType
                ? _value.insightType
                : insightType // ignore: cast_nullable_to_non_nullable
                      as String,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as String,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as int,
            relatedExamId: freezed == relatedExamId
                ? _value.relatedExamId
                : relatedExamId // ignore: cast_nullable_to_non_nullable
                      as String?,
            relatedSubject: freezed == relatedSubject
                ? _value.relatedSubject
                : relatedSubject // ignore: cast_nullable_to_non_nullable
                      as String?,
            statusLabel: freezed == statusLabel
                ? _value.statusLabel
                : statusLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
            headline: null == headline
                ? _value.headline
                : headline // ignore: cast_nullable_to_non_nullable
                      as String,
            body: freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String?,
            actionCta: freezed == actionCta
                ? _value.actionCta
                : actionCta // ignore: cast_nullable_to_non_nullable
                      as String?,
            actionDetail: freezed == actionDetail
                ? _value.actionDetail
                : actionDetail // ignore: cast_nullable_to_non_nullable
                      as String?,
            daysSinceEvent: freezed == daysSinceEvent
                ? _value.daysSinceEvent
                : daysSinceEvent // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailyInsightImplCopyWith<$Res>
    implements $DailyInsightCopyWith<$Res> {
  factory _$$DailyInsightImplCopyWith(
    _$DailyInsightImpl value,
    $Res Function(_$DailyInsightImpl) then,
  ) = __$$DailyInsightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'parent_id') String parentId,
    @JsonKey(name: 'student_id') String studentId,
    @JsonKey(name: 'for_date') DateTime forDate,
    @JsonKey(name: 'insight_type') String insightType,
    String severity,
    int priority,
    @JsonKey(name: 'related_exam_id') String? relatedExamId,
    @JsonKey(name: 'related_subject') String? relatedSubject,
    @JsonKey(name: 'status_label') String? statusLabel,
    String headline,
    String? body,
    @JsonKey(name: 'action_cta') String? actionCta,
    @JsonKey(name: 'action_detail') String? actionDetail,
    @JsonKey(name: 'days_since_event') int? daysSinceEvent,
  });
}

/// @nodoc
class __$$DailyInsightImplCopyWithImpl<$Res>
    extends _$DailyInsightCopyWithImpl<$Res, _$DailyInsightImpl>
    implements _$$DailyInsightImplCopyWith<$Res> {
  __$$DailyInsightImplCopyWithImpl(
    _$DailyInsightImpl _value,
    $Res Function(_$DailyInsightImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? studentId = null,
    Object? forDate = null,
    Object? insightType = null,
    Object? severity = null,
    Object? priority = null,
    Object? relatedExamId = freezed,
    Object? relatedSubject = freezed,
    Object? statusLabel = freezed,
    Object? headline = null,
    Object? body = freezed,
    Object? actionCta = freezed,
    Object? actionDetail = freezed,
    Object? daysSinceEvent = freezed,
  }) {
    return _then(
      _$DailyInsightImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        forDate: null == forDate
            ? _value.forDate
            : forDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        insightType: null == insightType
            ? _value.insightType
            : insightType // ignore: cast_nullable_to_non_nullable
                  as String,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as String,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as int,
        relatedExamId: freezed == relatedExamId
            ? _value.relatedExamId
            : relatedExamId // ignore: cast_nullable_to_non_nullable
                  as String?,
        relatedSubject: freezed == relatedSubject
            ? _value.relatedSubject
            : relatedSubject // ignore: cast_nullable_to_non_nullable
                  as String?,
        statusLabel: freezed == statusLabel
            ? _value.statusLabel
            : statusLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
        headline: null == headline
            ? _value.headline
            : headline // ignore: cast_nullable_to_non_nullable
                  as String,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        actionCta: freezed == actionCta
            ? _value.actionCta
            : actionCta // ignore: cast_nullable_to_non_nullable
                  as String?,
        actionDetail: freezed == actionDetail
            ? _value.actionDetail
            : actionDetail // ignore: cast_nullable_to_non_nullable
                  as String?,
        daysSinceEvent: freezed == daysSinceEvent
            ? _value.daysSinceEvent
            : daysSinceEvent // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyInsightImpl implements _DailyInsight {
  const _$DailyInsightImpl({
    required this.id,
    @JsonKey(name: 'parent_id') required this.parentId,
    @JsonKey(name: 'student_id') required this.studentId,
    @JsonKey(name: 'for_date') required this.forDate,
    @JsonKey(name: 'insight_type') required this.insightType,
    required this.severity,
    required this.priority,
    @JsonKey(name: 'related_exam_id') this.relatedExamId,
    @JsonKey(name: 'related_subject') this.relatedSubject,
    @JsonKey(name: 'status_label') this.statusLabel,
    required this.headline,
    this.body,
    @JsonKey(name: 'action_cta') this.actionCta,
    @JsonKey(name: 'action_detail') this.actionDetail,
    @JsonKey(name: 'days_since_event') this.daysSinceEvent,
  });

  factory _$DailyInsightImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyInsightImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'parent_id')
  final String parentId;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'for_date')
  final DateTime forDate;
  @override
  @JsonKey(name: 'insight_type')
  final String insightType;
  @override
  final String severity;
  // red / amber / gold / green
  @override
  final int priority;
  @override
  @JsonKey(name: 'related_exam_id')
  final String? relatedExamId;
  @override
  @JsonKey(name: 'related_subject')
  final String? relatedSubject;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  final String headline;
  @override
  final String? body;
  @override
  @JsonKey(name: 'action_cta')
  final String? actionCta;
  @override
  @JsonKey(name: 'action_detail')
  final String? actionDetail;
  @override
  @JsonKey(name: 'days_since_event')
  final int? daysSinceEvent;

  @override
  String toString() {
    return 'DailyInsight(id: $id, parentId: $parentId, studentId: $studentId, forDate: $forDate, insightType: $insightType, severity: $severity, priority: $priority, relatedExamId: $relatedExamId, relatedSubject: $relatedSubject, statusLabel: $statusLabel, headline: $headline, body: $body, actionCta: $actionCta, actionDetail: $actionDetail, daysSinceEvent: $daysSinceEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyInsightImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.forDate, forDate) || other.forDate == forDate) &&
            (identical(other.insightType, insightType) ||
                other.insightType == insightType) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.relatedExamId, relatedExamId) ||
                other.relatedExamId == relatedExamId) &&
            (identical(other.relatedSubject, relatedSubject) ||
                other.relatedSubject == relatedSubject) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.actionCta, actionCta) ||
                other.actionCta == actionCta) &&
            (identical(other.actionDetail, actionDetail) ||
                other.actionDetail == actionDetail) &&
            (identical(other.daysSinceEvent, daysSinceEvent) ||
                other.daysSinceEvent == daysSinceEvent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    parentId,
    studentId,
    forDate,
    insightType,
    severity,
    priority,
    relatedExamId,
    relatedSubject,
    statusLabel,
    headline,
    body,
    actionCta,
    actionDetail,
    daysSinceEvent,
  );

  /// Create a copy of DailyInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyInsightImplCopyWith<_$DailyInsightImpl> get copyWith =>
      __$$DailyInsightImplCopyWithImpl<_$DailyInsightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyInsightImplToJson(this);
  }
}

abstract class _DailyInsight implements DailyInsight {
  const factory _DailyInsight({
    required final String id,
    @JsonKey(name: 'parent_id') required final String parentId,
    @JsonKey(name: 'student_id') required final String studentId,
    @JsonKey(name: 'for_date') required final DateTime forDate,
    @JsonKey(name: 'insight_type') required final String insightType,
    required final String severity,
    required final int priority,
    @JsonKey(name: 'related_exam_id') final String? relatedExamId,
    @JsonKey(name: 'related_subject') final String? relatedSubject,
    @JsonKey(name: 'status_label') final String? statusLabel,
    required final String headline,
    final String? body,
    @JsonKey(name: 'action_cta') final String? actionCta,
    @JsonKey(name: 'action_detail') final String? actionDetail,
    @JsonKey(name: 'days_since_event') final int? daysSinceEvent,
  }) = _$DailyInsightImpl;

  factory _DailyInsight.fromJson(Map<String, dynamic> json) =
      _$DailyInsightImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'parent_id')
  String get parentId;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'for_date')
  DateTime get forDate;
  @override
  @JsonKey(name: 'insight_type')
  String get insightType;
  @override
  String get severity; // red / amber / gold / green
  @override
  int get priority;
  @override
  @JsonKey(name: 'related_exam_id')
  String? get relatedExamId;
  @override
  @JsonKey(name: 'related_subject')
  String? get relatedSubject;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  String get headline;
  @override
  String? get body;
  @override
  @JsonKey(name: 'action_cta')
  String? get actionCta;
  @override
  @JsonKey(name: 'action_detail')
  String? get actionDetail;
  @override
  @JsonKey(name: 'days_since_event')
  int? get daysSinceEvent;

  /// Create a copy of DailyInsight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyInsightImplCopyWith<_$DailyInsightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
