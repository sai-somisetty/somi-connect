import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/api_service.dart';

class CollegeLogSubject {
  const CollegeLogSubject({
    required this.subjectName,
    required this.topics,
    this.homework,
    this.teacherName,
  });

  final String subjectName;
  final List<String> topics;
  final String? homework;
  final String? teacherName;

  static CollegeLogSubject? fromMap(dynamic m) {
    if (m is! Map) return null;
    final map = Map<String, dynamic>.from(
      m.map((k, v) => MapEntry(k.toString(), v)),
    );
    final topicsRaw = map['topics'];
    final topics = topicsRaw is List
        ? topicsRaw.map((e) => e.toString()).toList()
        : topicsRaw is String
            ? [topicsRaw]
            : <String>[];
    return CollegeLogSubject(
      subjectName:
          map['subject_name']?.toString() ?? map['name']?.toString() ?? 'Subject',
      topics: topics,
      homework: map['homework']?.toString(),
      teacherName: map['teacher_name']?.toString(),
    );
  }
}

class CollegeLogToday {
  const CollegeLogToday({
    required this.date,
    this.updatedAt,
    this.subjects = const [],
  });

  final String date;
  final DateTime? updatedAt;
  final List<CollegeLogSubject> subjects;

  static CollegeLogToday fromJson(Map<String, dynamic> raw) {
    final list = raw['subjects'];
    final subjects = <CollegeLogSubject>[];
    if (list is List) {
      for (final item in list) {
        final s = CollegeLogSubject.fromMap(item);
        if (s != null) subjects.add(s);
      }
    }
    return CollegeLogToday(
      date: raw['date']?.toString() ?? '',
      updatedAt: _parseDateTime(raw['updated_at']),
      subjects: subjects,
    );
  }
}

class CollegeLogDayEntry {
  const CollegeLogDayEntry({
    required this.logDate,
    this.updatedAt,
    this.subjects = const [],
  });

  final String logDate;
  final DateTime? updatedAt;
  final List<CollegeLogSubject> subjects;

  static CollegeLogDayEntry? fromMap(dynamic m) {
    if (m is! Map) return null;
    final map = Map<String, dynamic>.from(
      m.map((k, v) => MapEntry(k.toString(), v)),
    );
    final list = map['subjects'];
    final subjects = <CollegeLogSubject>[];
    if (list is List) {
      for (final item in list) {
        final s = CollegeLogSubject.fromMap(item);
        if (s != null) subjects.add(s);
      }
    }
    final logDate = map['log_date']?.toString() ?? '';
    if (logDate.isEmpty) return null;
    return CollegeLogDayEntry(
      logDate: logDate,
      updatedAt: _parseDateTime(map['updated_at']),
      subjects: subjects,
    );
  }
}

DateTime? _parseDateTime(dynamic v) {
  if (v == null) return null;
  if (v is DateTime) return v;
  return DateTime.tryParse(v.toString());
}

final collegeLogTodayProvider =
    FutureProvider.autoDispose.family<CollegeLogToday, String>((ref, studentId) async {
  final api = ref.watch(apiServiceProvider);
  final raw = await api.getCollegeLogToday(studentId);
  return CollegeLogToday.fromJson(raw);
});

final collegeLogWeekProvider =
    FutureProvider.autoDispose.family<List<CollegeLogDayEntry>, String>((ref, studentId) async {
  final api = ref.watch(apiServiceProvider);
  final raw = await api.getCollegeLogWeek(studentId, days: 7);
  final list = raw['days'];
  if (list is! List) return [];
  return list.map(CollegeLogDayEntry.fromMap).whereType<CollegeLogDayEntry>().toList();
});
