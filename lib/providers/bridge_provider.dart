import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/api_service.dart';

/// Parent bridge payload: college logs vs app concept_progress (backend fuzzy match).
class BridgePayload {
  const BridgePayload({
    this.todaySubjects = const [],
    this.todayTopics = const [],
    this.todayTotalTopics = 0,
    this.todayCoveredInApp = 0,
    this.todayPercentage = 100,
    this.weeklyTotalTopics = 0,
    this.weeklyCoveredInApp = 0,
    this.weeklyPercentage = 100,
    this.gaps = const [],
    this.homework = const [],
    this.dailyBreakdown = const [],
  });

  final List<BridgeTodaySubject> todaySubjects;
  final List<BridgeTodayTopic> todayTopics;
  final int todayTotalTopics;
  final int todayCoveredInApp;
  final int todayPercentage;
  final int weeklyTotalTopics;
  final int weeklyCoveredInApp;
  final int weeklyPercentage;
  final List<BridgeGap> gaps;
  final List<BridgeHomework> homework;
  final List<BridgeDailyBreakdown> dailyBreakdown;

  static BridgePayload empty() => const BridgePayload();

  static BridgePayload fromJson(Map<String, dynamic> raw) {
    final ts = raw['today_subjects'];
    final subjects = ts is List
        ? ts.map(BridgeTodaySubject.fromDynamic).whereType<BridgeTodaySubject>().toList()
        : <BridgeTodaySubject>[];

    final tt = raw['today_topics'];
    final topics = tt is List
        ? tt.map(BridgeTodayTopic.fromDynamic).whereType<BridgeTodayTopic>().toList()
        : <BridgeTodayTopic>[];

    final tsum = raw['today_summary'];
    int ttot = 0, tcov = 0, tpct = 100;
    if (tsum is Map) {
      ttot = (tsum['total_topics'] as num?)?.toInt() ?? 0;
      tcov = (tsum['covered_in_app'] as num?)?.toInt() ?? 0;
      tpct = (tsum['percentage'] as num?)?.toInt() ?? 100;
    }

    final wsum = raw['weekly_coverage'];
    int wtot = 0, wcov = 0, wpct = 100;
    if (wsum is Map) {
      wtot = (wsum['total_college_topics'] as num?)?.toInt() ?? 0;
      wcov = (wsum['covered_in_app'] as num?)?.toInt() ?? 0;
      wpct = (wsum['percentage'] as num?)?.toInt() ?? 100;
    }

    final g = raw['gaps'];
    final gaps = g is List
        ? g.map(BridgeGap.fromDynamic).whereType<BridgeGap>().toList()
        : <BridgeGap>[];

    final h = raw['homework'];
    final hw = h is List
        ? h.map(BridgeHomework.fromDynamic).whereType<BridgeHomework>().toList()
        : <BridgeHomework>[];

    final db = raw['daily_breakdown'];
    final daily = db is List
        ? db.map(BridgeDailyBreakdown.fromDynamic).whereType<BridgeDailyBreakdown>().toList()
        : <BridgeDailyBreakdown>[];

    return BridgePayload(
      todaySubjects: subjects,
      todayTopics: topics,
      todayTotalTopics: ttot,
      todayCoveredInApp: tcov,
      todayPercentage: tpct,
      weeklyTotalTopics: wtot,
      weeklyCoveredInApp: wcov,
      weeklyPercentage: wpct,
      gaps: gaps,
      homework: hw,
      dailyBreakdown: daily,
    );
  }
}

class BridgeTodaySubject {
  const BridgeTodaySubject({
    required this.subjectName,
    required this.topics,
    this.homework,
    this.teacherName,
  });

  final String subjectName;
  final List<String> topics;
  final String? homework;
  final String? teacherName;

  static BridgeTodaySubject? fromDynamic(dynamic m) {
    if (m is! Map) return null;
    final map = Map<String, dynamic>.from(m.map((k, v) => MapEntry(k.toString(), v)));
    final tr = map['topics'];
    final topics = tr is List
        ? tr.map((e) => e.toString()).toList()
        : tr is String
            ? [tr]
            : <String>[];
    return BridgeTodaySubject(
      subjectName: map['subject_name']?.toString() ?? 'Subject',
      topics: topics,
      homework: map['homework']?.toString(),
      teacherName: map['teacher_name']?.toString(),
    );
  }
}

class BridgeTodayTopic {
  const BridgeTodayTopic({
    required this.topic,
    required this.subject,
    required this.coveredInApp,
    required this.appProgress,
    required this.status,
  });

  final String topic;
  final String subject;
  final bool coveredInApp;
  final double appProgress;
  /// covered | started | missing
  final String status;

  static BridgeTodayTopic? fromDynamic(dynamic m) {
    if (m is! Map) return null;
    final map = Map<String, dynamic>.from(m.map((k, v) => MapEntry(k.toString(), v)));
    return BridgeTodayTopic(
      topic: map['topic']?.toString() ?? '',
      subject: map['subject']?.toString() ?? '',
      coveredInApp: map['covered_in_app'] == true,
      appProgress: (map['app_progress'] as num?)?.toDouble() ?? 0,
      status: map['status']?.toString() ?? 'missing',
    );
  }
}

class BridgeGap {
  const BridgeGap({required this.topic, required this.subject, required this.dateTaught});

  final String topic;
  final String subject;
  final String dateTaught;

  static BridgeGap? fromDynamic(dynamic m) {
    if (m is! Map) return null;
    final map = Map<String, dynamic>.from(m.map((k, v) => MapEntry(k.toString(), v)));
    return BridgeGap(
      topic: map['topic']?.toString() ?? '',
      subject: map['subject']?.toString() ?? '',
      dateTaught: map['date_taught']?.toString() ?? '',
    );
  }
}

class BridgeHomework {
  const BridgeHomework({required this.subject, required this.homework, required this.date});

  final String subject;
  final String homework;
  final String date;

  static BridgeHomework? fromDynamic(dynamic m) {
    if (m is! Map) return null;
    final map = Map<String, dynamic>.from(m.map((k, v) => MapEntry(k.toString(), v)));
    return BridgeHomework(
      subject: map['subject']?.toString() ?? '',
      homework: map['homework']?.toString() ?? '',
      date: map['date']?.toString() ?? '',
    );
  }
}

class BridgeDailyBreakdown {
  const BridgeDailyBreakdown({required this.logDate, required this.topics});

  final String logDate;
  final List<BridgeTodayTopic> topics;

  static BridgeDailyBreakdown? fromDynamic(dynamic m) {
    if (m is! Map) return null;
    final map = Map<String, dynamic>.from(m.map((k, v) => MapEntry(k.toString(), v)));
    final t = map['topics'];
    final topics = t is List
        ? t.map(BridgeTodayTopic.fromDynamic).whereType<BridgeTodayTopic>().toList()
        : <BridgeTodayTopic>[];
    return BridgeDailyBreakdown(
      logDate: map['log_date']?.toString() ?? '',
      topics: topics,
    );
  }
}

final bridgeDataProvider =
    FutureProvider.autoDispose.family<BridgePayload, String>((ref, studentId) async {
  final api = ref.watch(apiServiceProvider);
  final raw = await api.getBridge(studentId);
  if (raw.isEmpty) return BridgePayload.empty();
  return BridgePayload.fromJson(raw);
});
