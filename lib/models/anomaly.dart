import 'package:freezed_annotation/freezed_annotation.dart';

part 'anomaly.freezed.dart';
part 'anomaly.g.dart';

@freezed
sealed class Anomaly with _$Anomaly {
  const factory Anomaly({
    required String id,
    @JsonKey(name: 'exam_session_id') required String examSessionId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'anomaly_type') required String anomalyType,
    required String severity,
    String? details,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Anomaly;

  factory Anomaly.fromJson(Map<String, dynamic> json) =>
      _$AnomalyFromJson(json);
}
