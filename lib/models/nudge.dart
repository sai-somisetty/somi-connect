import 'package:freezed_annotation/freezed_annotation.dart';

part 'nudge.freezed.dart';
part 'nudge.g.dart';

@freezed
sealed class Nudge with _$Nudge {
  const factory Nudge({
    required String id,
    @JsonKey(name: 'parent_id') required String parentId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'nudge_type') required String nudgeType,
    required String title,
    required String body,
    required String priority,
    @JsonKey(name: 'is_read') required bool isRead,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Nudge;

  factory Nudge.fromJson(Map<String, dynamic> json) => _$NudgeFromJson(json);
}
