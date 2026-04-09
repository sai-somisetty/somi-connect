import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent.freezed.dart';
part 'parent.g.dart';

@freezed
sealed class Parent with _$Parent {
  const factory Parent({
    required String id,
    @JsonKey(name: 'auth_id') required String authId,
    required String name,
    required String email,
    String? phone,
    @JsonKey(name: 'language_pref') String? languagePref,
    @JsonKey(name: 'pin_hash') String? pinHash,
    @JsonKey(name: 'device_token') String? deviceToken,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}
