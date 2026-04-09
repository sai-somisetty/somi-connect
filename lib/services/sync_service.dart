import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/isar/isar_collections.dart';
import '../providers/selected_student_provider.dart';
import '../providers/storage_provider.dart';
import '../storage/storage_interface.dart';
import 'api_service.dart';

final syncServiceProvider = Provider<SyncService>((ref) {
  return SyncService(
    storage: ref.watch(storageProvider),
    api: ref.watch(apiServiceProvider),
    ref: ref,
  );
});

class SyncService {
  SyncService({
    required StorageInterface storage,
    required ApiService api,
    required Ref ref,
  })  : _storage = storage,
        _api = api,
        _ref = ref;

  final StorageInterface _storage;
  final ApiService _api;
  final Ref _ref;

  Timer? _timer;

  Future<DateTime?> get lastSyncedAt async =>
      _storage.getLastSyncedAt();

  Future<void> pullFromServer(String studentId) async {
    final map = await _api.postSyncPull(studentId: studentId);
    if (map == null) return;
    await _storage.writeTxn(() async {
      await _applyPullPayload(map);
      await _touchSyncMeta();
    });
  }

  Future<void> pushToServer() async {
    final allSync = await _storage.allSyncItems();
    final pending = allSync.where((e) => !e.synced).toList();
    if (pending.isEmpty) return;

    final items = <Map<String, dynamic>>[];
    for (final row in pending) {
      try {
        items.add({
          'table_name': row.tableName,
          'operation': row.operation,
          'payload': jsonDecode(row.payloadJson) as Object,
        });
      } catch (_) {
        row.retryCount++;
        await _storage.putSyncItem(row);
      }
    }
    if (items.isEmpty) return;
    await _api.postSyncPush(items);
    await _storage.writeTxn(() async {
      for (final row in pending) {
        row.synced = true;
        await _storage.putSyncItem(row);
      }
      await _touchSyncMeta();
    });
  }

  void startPeriodicSync() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(minutes: 5), (_) async {
      final sid = _ref.read(selectedStudentIdProvider);
      if (sid != null) {
        try {
          await pullFromServer(sid);
        } catch (_) {}
      }
      try {
        await pushToServer();
      } catch (_) {}
    });
  }

  void stopPeriodicSync() {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> queueOutbound({
    required String tableName,
    required String operation,
    required Map<String, dynamic> payload,
  }) async {
    final row = SyncItemIsar()
      ..tableName = tableName
      ..operation = operation
      ..payloadJson = jsonEncode(payload)
      ..synced = false
      ..retryCount = 0
      ..createdAt = DateTime.now();
    await _storage.writeTxn(() => _storage.putSyncItem(row));
  }

  Future<void> _touchSyncMeta() async {
    var meta = await _storage.getSyncMetaFirst();
    meta ??= SyncMetaIsar();
    meta.lastSyncedAt = DateTime.now();
    await _storage.putSyncMeta(meta);
  }

  Future<void> _applyPullPayload(Map<String, dynamic> data) async {
    final parent = _asMap(data['parent']);
    if (parent != null) await _putParent(parent);

    for (final s in _asList(data['students'])) {
      final m = _asMap(s);
      if (m != null) await _putStudent(m);
    }
    for (final l in _asList(data['links'] ?? data['parent_student_links'])) {
      final m = _asMap(l);
      if (m != null) await _putLink(m);
    }
    for (final e in _asList(data['exam_sessions'])) {
      final m = _asMap(e);
      if (m != null) await _putExamSession(m);
    }
    for (final a in _asList(data['study_activities'])) {
      final m = _asMap(a);
      if (m != null) await _putStudyActivity(m);
    }
    for (final q in _asList(data['quiz_scores'])) {
      final m = _asMap(q);
      if (m != null) await _putQuizScore(m);
    }
    for (final c in _asList(data['concept_progress'] ?? data['concepts'])) {
      final m = _asMap(c);
      if (m != null) await _putConcept(m);
    }
    for (final st in _asList(data['streaks'] ?? data['streak'])) {
      final m = _asMap(st);
      if (m != null) await _putStreak(m);
    }
    for (final n in _asList(data['nudges'])) {
      final m = _asMap(n);
      if (m != null) await _putNudge(m);
    }
    for (final a in _asList(data['anomalies'] ?? data['anomaly_logs'])) {
      final m = _asMap(a);
      if (m != null) await _putAnomaly(m);
    }
    for (final h in _asList(data['health_records'])) {
      final m = _asMap(h);
      if (m != null) await _putHealth(m);
    }
  }

  Map<String, dynamic>? _asMap(Object? v) =>
      v is Map<String, dynamic> ? v : v is Map ? Map<String, dynamic>.from(v) : null;

  List<dynamic> _asList(Object? v) => v is List ? v : const [];

  Future<void> _putParent(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = ParentIsar()
      ..apiId = id
      ..authId = j['auth_id']?.toString() ?? ''
      ..name = j['name']?.toString() ?? ''
      ..email = j['email']?.toString() ?? ''
      ..phone = j['phone']?.toString()
      ..languagePref = j['language_pref']?.toString() ?? 'te'
      ..pinHash = j['pin_hash']?.toString()
      ..deviceToken = j['device_token']?.toString();
    await _storage.putParent(row);
  }

  Future<void> _putStudent(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = StudentIsar()
      ..apiId = id
      ..name = j['name']?.toString() ?? ''
      ..email = j['email']?.toString() ?? ''
      ..stream = j['stream']?.toString()
      ..examDate = _parseDate(j['exam_date'])
      ..examLevel = j['exam_level']?.toString();
    await _storage.putStudent(row);
  }

  Future<void> _putLink(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = ParentStudentLinkIsar()
      ..apiId = id
      ..parentId = j['parent_id']?.toString() ?? ''
      ..studentId = j['student_id']?.toString() ?? ''
      ..relationship = j['relationship']?.toString() ?? ''
      ..verified = j['verified'] as bool? ?? false;
    await _storage.putParentStudentLink(row);
  }

  Future<void> _putExamSession(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = ExamSessionIsar()
      ..apiId = id
      ..studentId = j['student_id']?.toString() ?? ''
      ..examType = j['exam_type']?.toString() ?? ''
      ..status = j['status']?.toString() ?? ''
      ..kioskLocked = j['kiosk_locked'] as bool? ?? false
      ..startedAt = _parseDate(j['started_at'])
      ..endedAt = _parseDate(j['ended_at'])
      ..totalQuestions = (j['total_questions'] as num?)?.toInt()
      ..answeredCount = (j['answered_count'] as num?)?.toInt()
      ..parentPinVerified = j['parent_pin_verified'] as bool? ?? false;
    await _storage.putExamSession(row);
  }

  Future<void> _putStudyActivity(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = StudyActivityIsar()
      ..apiId = id
      ..studentId = j['student_id']?.toString() ?? ''
      ..activityDate = _parseDate(j['activity_date']) ?? DateTime.now()
      ..activityType = j['activity_type']?.toString() ?? ''
      ..durationMinutes = (j['duration_minutes'] as num?)?.toInt()
      ..chapterId = j['chapter_id']?.toString()
      ..conceptId = j['concept_id']?.toString();
    await _storage.putStudyActivity(row);
  }

  Future<void> _putQuizScore(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = QuizScoreIsar()
      ..apiId = id
      ..studentId = j['student_id']?.toString() ?? ''
      ..score = (j['score'] as num?)?.toInt()
      ..total = (j['total'] as num?)?.toInt()
      ..chapter = j['chapter']?.toString()
      ..createdAt = _parseDate(j['created_at']);
    await _storage.putQuizScore(row);
  }

  Future<void> _putConcept(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final raw = j['progress_percent'] ?? j['progress'] ?? 0;
    final row = ConceptProgressIsar()
      ..apiId = id
      ..studentId = j['student_id']?.toString() ?? ''
      ..conceptName = j['concept_name']?.toString() ?? j['name']?.toString() ?? ''
      ..progressPercent = (raw as num?)?.toDouble() ?? 0;
    await _storage.putConceptProgress(row);
  }

  Future<void> _putStreak(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = StreakIsar()
      ..apiId = id
      ..studentId = j['student_id']?.toString() ?? ''
      ..currentStreak = (j['current_streak'] as num?)?.toInt() ?? 0
      ..maxStreak = (j['max_streak'] as num?)?.toInt() ?? 0;
    await _storage.putStreak(row);
  }

  Future<void> _putNudge(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = NudgeIsar()
      ..apiId = id
      ..parentId = j['parent_id']?.toString() ?? ''
      ..studentId = j['student_id']?.toString() ?? ''
      ..nudgeType = j['nudge_type']?.toString() ?? ''
      ..title = j['title']?.toString() ?? ''
      ..body = j['body']?.toString() ?? ''
      ..priority = j['priority']?.toString() ?? 'normal'
      ..isRead = j['is_read'] as bool? ?? false
      ..createdAt = _parseDate(j['created_at']);
    await _storage.putNudge(row);
  }

  Future<void> _putAnomaly(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = AnomalyIsar()
      ..apiId = id
      ..examSessionId = j['exam_session_id']?.toString() ?? ''
      ..studentId = j['student_id']?.toString() ?? ''
      ..anomalyType = j['anomaly_type']?.toString() ?? ''
      ..severity = j['severity']?.toString() ?? ''
      ..details = j['details']?.toString()
      ..createdAt = _parseDate(j['created_at']);
    await _storage.putAnomaly(row);
  }

  Future<void> _putHealth(Map<String, dynamic> j) async {
    final id = j['id']?.toString() ?? '';
    if (id.isEmpty) return;
    final row = HealthRecordIsar()
      ..apiId = id
      ..studentId = j['student_id']?.toString() ?? ''
      ..recordType = j['record_type']?.toString() ?? ''
      ..recordDate = _parseDate(j['record_date'])
      ..heightCm = (j['height_cm'] as num?)?.toDouble()
      ..weightKg = (j['weight_kg'] as num?)?.toDouble()
      ..bmi = (j['bmi'] as num?)?.toDouble()
      ..vitaminB12 = (j['vitamin_b12'] as num?)?.toDouble()
      ..vitaminD3 = (j['vitamin_d3'] as num?)?.toDouble()
      ..ironLevel = (j['iron_level'] as num?)?.toDouble()
      ..ferritin = (j['ferritin'] as num?)?.toDouble()
      ..hemoglobin = (j['hemoglobin'] as num?)?.toDouble();
    await _storage.putHealthRecord(row);
  }

  DateTime? _parseDate(Object? v) {
    if (v == null) return null;
    if (v is DateTime) return v;
    return DateTime.tryParse(v.toString());
  }
}
