import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/api_service.dart';

/// Parent display name from `/parent/profile` (for greeting).
final parentDisplayNameProvider = FutureProvider<String?>((ref) async {
  final api = ref.watch(apiServiceProvider);
  try {
    final p = await api.getProfile();
    if (p == null) return null;
    final name = p['name'] ?? p['full_name'] ?? p['display_name'];
    if (name is String && name.trim().isNotEmpty) return name.trim();
  } catch (_) {}
  return null;
});

/// Raw dashboard + activity from Phase 2 endpoints (best-effort).
final todayRemoteProvider =
    FutureProvider.autoDispose.family<TodayRemoteBundle, String>((ref, studentId) async {
  final api = ref.watch(apiServiceProvider);
  Map<String, dynamic>? dashboard;
  final activity = <Map<String, dynamic>>[];
  try {
    dashboard = await api.getParentDashboard(studentId);
  } catch (_) {}
  try {
    final raw = await api.getParentActivityList(studentId);
    for (final item in raw) {
      if (item is Map) {
        activity.add(Map<String, dynamic>.from(item.map((k, v) => MapEntry(k.toString(), v))));
      }
    }
  } catch (_) {}
  return TodayRemoteBundle(dashboard: dashboard, activity: activity);
});

class TodayRemoteBundle {
  const TodayRemoteBundle({this.dashboard, this.activity = const []});

  final Map<String, dynamic>? dashboard;
  final List<Map<String, dynamic>> activity;
}

int? _intFrom(dynamic v) {
  if (v == null) return null;
  if (v is int) return v;
  if (v is double) return v.round();
  if (v is String) return int.tryParse(v);
  return null;
}

double? _doubleFrom(dynamic v) {
  if (v == null) return null;
  if (v is num) return v.toDouble();
  if (v is String) return double.tryParse(v);
  return null;
}

/// Optional overrides from [dashboard] map for streak / stats / chart / quizzes.
class TodayDashboardFields {
  const TodayDashboardFields({
    this.currentStreak,
    this.maxStreak,
    this.studyMinutesToday,
    this.quizCountToday,
    this.doubtCountToday,
    this.weeklyPctByDay,
    this.recentQuizzes,
  });

  final int? currentStreak;
  final int? maxStreak;
  final int? studyMinutesToday;
  final int? quizCountToday;
  final int? doubtCountToday;

  /// Seven values aligned with last-7-days chart (Mon..Sun slot order in chart = index 0..6). Use -1 for empty day.
  final List<double>? weeklyPctByDay;

  /// Normalized recent quiz rows from API when present.
  final List<RecentQuizRow>? recentQuizzes;

  static TodayDashboardFields? parse(Map<String, dynamic>? d) {
    if (d == null) return null;

    final cur = _intFrom(d['current_streak'] ?? d['streak'] ?? d['streak_current']);
    final max = _intFrom(d['max_streak'] ?? d['streak_best']);
    final study = _intFrom(
      d['study_minutes_today'] ??
          d['study_time_minutes_today'] ??
          d['today_study_minutes'],
    );
    final quizzes = _intFrom(d['quiz_count_today'] ?? d['quizzes_today'] ?? d['today_quiz_count']);
    final doubts = _intFrom(d['doubt_count_today'] ?? d['doubts_today'] ?? d['today_doubt_count']);

    final weekly = _parseWeekly(d);
    final recent = _parseRecentQuizzes(d);

    if (cur == null &&
        max == null &&
        study == null &&
        quizzes == null &&
        doubts == null &&
        weekly == null &&
        (recent == null || recent.isEmpty)) {
      return null;
    }

    return TodayDashboardFields(
      currentStreak: cur,
      maxStreak: max,
      studyMinutesToday: study,
      quizCountToday: quizzes,
      doubtCountToday: doubts,
      weeklyPctByDay: weekly,
      recentQuizzes: recent,
    );
  }

  static List<double>? _parseWeekly(Map<String, dynamic> d) {
    final raw = d['weekly_scores'] ??
        d['week_scores'] ??
        d['last_7_days'] ??
        d['scores_last_7_days'] ??
        d['week'];
    if (raw is! List || raw.isEmpty) return null;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final result = List<double>.filled(7, -1);

    if (raw.length == 7) {
      var allSimple = true;
      for (final e in raw) {
        if (e != null && e is! num && e is! Map) allSimple = false;
      }
      if (allSimple) {
        for (var i = 0; i < 7; i++) {
          final e = raw[i];
          if (e is num) {
            result[i] = e.toDouble().clamp(0, 100);
          } else if (e is Map) {
            final m = Map<String, dynamic>.from(e.map((k, v) => MapEntry(k.toString(), v)));
            final pct = _pctFromMap(m);
            if (pct != null) result[i] = pct;
          }
        }
        return result;
      }
    }

    for (final item in raw) {
      if (item is! Map) continue;
      final m = Map<String, dynamic>.from(item.map((k, v) => MapEntry(k.toString(), v)));
      DateTime? day;
      final dateStr = m['date'] ?? m['day'];
      if (dateStr is String) {
        final parsed = DateTime.tryParse(dateStr);
        if (parsed != null) day = DateTime(parsed.year, parsed.month, parsed.day);
      }
      final pct = _pctFromMap(m);
      if (day == null || pct == null) continue;
      for (var i = 0; i < 7; i++) {
        final slot = today.subtract(Duration(days: 6 - i));
        if (slot.year == day.year && slot.month == day.month && slot.day == day.day) {
          result[i] = pct.clamp(0, 100);
          break;
        }
      }
    }

    if (result.every((e) => e < 0)) return null;
    return result;
  }

  static double? _pctFromMap(Map<String, dynamic> m) {
    final p = m['pct'] ?? m['score_pct'] ?? m['percentage'] ?? m['average'] ?? m['avg'];
    final d = _doubleFrom(p);
    if (d != null) return d.clamp(0, 100);
    final sc = _doubleFrom(m['score']);
    final tot = _doubleFrom(m['total']);
    if (sc != null && tot != null && tot > 0) return ((sc / tot) * 100).clamp(0, 100);
    return null;
  }

  static List<RecentQuizRow>? _parseRecentQuizzes(Map<String, dynamic> d) {
    final raw = d['recent_quizzes'] ?? d['quizzes'] ?? d['latest_quizzes'];
    if (raw is! List) return null;
    final out = <RecentQuizRow>[];
    for (final item in raw) {
      if (item is! Map) continue;
      final m = Map<String, dynamic>.from(item.map((k, v) => MapEntry(k.toString(), v)));
      final title = (m['chapter'] ??
              m['chapter_name'] ??
              m['title'] ??
              m['name'] ??
              'Quiz')
          .toString();
      final pct = _pctFromMap(m);
      if (pct == null) continue;
      final score = _intFrom(m['score'] ?? m['correct']);
      final total = _intFrom(m['total'] ?? m['total_questions']);
      DateTime? created;
      final ds = m['created_at'] ?? m['at'] ?? m['completed_at'];
      if (ds is String) created = DateTime.tryParse(ds);
      out.add(RecentQuizRow(
        chapterTitle: title,
        pct: pct,
        score: score,
        total: total,
        createdAt: created,
      ));
    }
    return out.isEmpty ? null : out;
  }
}

class RecentQuizRow {
  const RecentQuizRow({
    required this.chapterTitle,
    required this.pct,
    this.score,
    this.total,
    this.createdAt,
  });

  final String chapterTitle;
  final double pct;
  final int? score;
  final int? total;
  final DateTime? createdAt;
}

DateTime? _parseActivityTime(Map<String, dynamic> m) {
  for (final key in ['at', 'time', 'created_at', 'occurred_at', 'timestamp']) {
    final v = m[key];
    if (v is String) {
      final d = DateTime.tryParse(v);
      if (d != null) return d;
    }
  }
  return null;
}

enum ActivityVisualKind { lesson, quiz, doubt, other }

class ActivityTimelineItem {
  const ActivityTimelineItem({
    required this.at,
    required this.line,
    required this.kind,
  });

  final DateTime at;
  final String line;
  final ActivityVisualKind kind;

  static List<ActivityTimelineItem> fromRemote(List<Map<String, dynamic>> rows) {
    final out = <ActivityTimelineItem>[];
    for (final m in rows) {
      final at = _parseActivityTime(m) ?? DateTime.now();
      final type = (m['type'] ?? m['activity_type'] ?? '').toString().toLowerCase();
      final title = (m['title'] ?? m['message'] ?? m['detail'] ?? m['description'] ?? '').toString();
      final extra = (m['subtitle'] ?? m['body'] ?? '').toString();
      ActivityVisualKind kind;
      if (type.contains('quiz') || title.toLowerCase().contains('quiz')) {
        kind = ActivityVisualKind.quiz;
      } else if (type.contains('doubt') ||
          type.contains('question') ||
          title.contains('?')) {
        kind = ActivityVisualKind.doubt;
      } else if (type.contains('lesson') ||
          type.contains('read') ||
          type.contains('study') ||
          type.contains('chapter')) {
        kind = ActivityVisualKind.lesson;
      } else {
        kind = ActivityVisualKind.other;
      }
      final line = [title, extra].where((s) => s.trim().isNotEmpty).join(' — ');
      if (line.isEmpty) continue;
      final timeStr = formatClock(at);
      out.add(ActivityTimelineItem(at: at, line: '$timeStr — $line', kind: kind));
    }
    out.sort((a, b) => a.at.compareTo(b.at));
    return out;
  }

  static String formatClock(DateTime t) {
    final h = t.hour;
    final m = t.minute;
    final ap = h >= 12 ? 'PM' : 'AM';
    final h12 = h % 12 == 0 ? 12 : h % 12;
    return '${h12.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')} $ap';
  }
}
