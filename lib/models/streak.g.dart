// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streak.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreakImpl _$$StreakImplFromJson(Map<String, dynamic> json) => _$StreakImpl(
  id: json['id'] as String,
  studentId: json['student_id'] as String,
  currentStreak: (json['current_streak'] as num).toInt(),
  maxStreak: (json['max_streak'] as num).toInt(),
);

Map<String, dynamic> _$$StreakImplToJson(_$StreakImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'current_streak': instance.currentStreak,
      'max_streak': instance.maxStreak,
    };
