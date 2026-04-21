import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_insight.freezed.dart';
part 'daily_insight.g.dart';

@freezed
class DailyInsight with _$DailyInsight {
  const factory DailyInsight({
    required String id,
    @JsonKey(name: 'parent_id') required String parentId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'for_date') required DateTime forDate,
    @JsonKey(name: 'insight_type') required String insightType,
    required String severity, // red / amber / gold / green
    required int priority,
    @JsonKey(name: 'related_exam_id') String? relatedExamId,
    @JsonKey(name: 'related_subject') String? relatedSubject,
    @JsonKey(name: 'status_label') String? statusLabel,
    required String headline,
    String? body,
    @JsonKey(name: 'action_cta') String? actionCta,
    @JsonKey(name: 'action_detail') String? actionDetail,
    @JsonKey(name: 'days_since_event') int? daysSinceEvent,
  }) = _DailyInsight;

  factory DailyInsight.fromJson(Map<String, dynamic> json) =>
      _$DailyInsightFromJson(json);
}
