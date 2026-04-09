// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Parent _$ParentFromJson(Map<String, dynamic> json) => _Parent(
  id: json['id'] as String,
  authId: json['auth_id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  languagePref: json['language_pref'] as String?,
  pinHash: json['pin_hash'] as String?,
  deviceToken: json['device_token'] as String?,
);

Map<String, dynamic> _$ParentToJson(_Parent instance) => <String, dynamic>{
  'id': instance.id,
  'auth_id': instance.authId,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'language_pref': instance.languagePref,
  'pin_hash': instance.pinHash,
  'device_token': instance.deviceToken,
};
