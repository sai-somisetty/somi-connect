import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_score.freezed.dart';
part 'quiz_score.g.dart';

@freezed
sealed class QuizScore with _$QuizScore {
  const factory QuizScore({
    required String id,
    @JsonKey(name: 'student_id') required String studentId,
    int? score,
    int? total,
    String? chapter,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _QuizScore;

  factory QuizScore.fromJson(Map<String, dynamic> json) =>
      _$QuizScoreFromJson(json);
}
