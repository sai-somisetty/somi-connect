import 'package:freezed_annotation/freezed_annotation.dart';

part 'concept_progress.freezed.dart';
part 'concept_progress.g.dart';

@freezed
sealed class ConceptProgress with _$ConceptProgress {
  const factory ConceptProgress({
    required String id,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'concept_name') required String conceptName,
    @JsonKey(name: 'progress_percent') required double progressPercent,
  }) = _ConceptProgress;

  factory ConceptProgress.fromJson(Map<String, dynamic> json) =>
      _$ConceptProgressFromJson(json);
}
