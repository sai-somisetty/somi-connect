import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent_student_link.freezed.dart';
part 'parent_student_link.g.dart';

@freezed
sealed class ParentStudentLink with _$ParentStudentLink {
  const factory ParentStudentLink({
    required String id,
    @JsonKey(name: 'parent_id') required String parentId,
    @JsonKey(name: 'student_id') required String studentId,
    required String relationship,
    required bool verified,
  }) = _ParentStudentLink;

  factory ParentStudentLink.fromJson(Map<String, dynamic> json) =>
      _$ParentStudentLinkFromJson(json);
}
