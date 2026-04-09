import 'dart:async';
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../models/isar/isar_collections.dart';
import '../models/isar/isar_entity_codec.dart';
import 'storage_interface.dart';

/// Hive-backed storage for web and desktop. JSON rows in [Box<String>].
class HiveStorage implements StorageInterface {
  HiveStorage._({
    required Box<String> parents,
    required Box<String> students,
    required Box<String> links,
    required Box<String> examSessions,
    required Box<String> studyActivities,
    required Box<String> quizScores,
    required Box<String> conceptProgress,
    required Box<String> streaks,
    required Box<String> nudges,
    required Box<String> anomalies,
    required Box<String> healthRecords,
    required Box<String> syncItems,
    required Box<String> syncMeta,
    required Box<int> metaInts,
  })  : _parents = parents,
        _students = students,
        _links = links,
        _examSessions = examSessions,
        _studyActivities = studyActivities,
        _quizScores = quizScores,
        _conceptProgress = conceptProgress,
        _streaks = streaks,
        _nudges = nudges,
        _anomalies = anomalies,
        _healthRecords = healthRecords,
        _syncItems = syncItems,
        _syncMeta = syncMeta,
        _metaInts = metaInts;

  final Box<String> _parents;
  final Box<String> _students;
  final Box<String> _links;
  final Box<String> _examSessions;
  final Box<String> _studyActivities;
  final Box<String> _quizScores;
  final Box<String> _conceptProgress;
  final Box<String> _streaks;
  final Box<String> _nudges;
  final Box<String> _anomalies;
  final Box<String> _healthRecords;
  final Box<String> _syncItems;
  final Box<String> _syncMeta;
  final Box<int> _metaInts;

  Future<void>? _txnTail;

  /// [Hive.initFlutter] must run first (see [main]).
  static Future<HiveStorage> open() async {
    const p = 'somi_';
    final parents = await Hive.openBox<String>('${p}parents');
    final students = await Hive.openBox<String>('${p}students');
    final links = await Hive.openBox<String>('${p}links');
    final examSessions = await Hive.openBox<String>('${p}exam_sessions');
    final studyActivities = await Hive.openBox<String>('${p}study_activities');
    final quizScores = await Hive.openBox<String>('${p}quiz_scores');
    final conceptProgress = await Hive.openBox<String>('${p}concept_progress');
    final streaks = await Hive.openBox<String>('${p}streaks');
    final nudges = await Hive.openBox<String>('${p}nudges');
    final anomalies = await Hive.openBox<String>('${p}anomalies');
    final healthRecords = await Hive.openBox<String>('${p}health_records');
    final syncItems = await Hive.openBox<String>('${p}sync_items');
    final syncMeta = await Hive.openBox<String>('${p}sync_meta');
    final metaInts = await Hive.openBox<int>('${p}meta_int');

    return HiveStorage._(
      parents: parents,
      students: students,
      links: links,
      examSessions: examSessions,
      studyActivities: studyActivities,
      quizScores: quizScores,
      conceptProgress: conceptProgress,
      streaks: streaks,
      nudges: nudges,
      anomalies: anomalies,
      healthRecords: healthRecords,
      syncItems: syncItems,
      syncMeta: syncMeta,
      metaInts: metaInts,
    );
  }

  int _nextId(String collection) {
    final key = 'next_$collection';
    final n = _metaInts.get(key) ?? 1;
    _metaInts.put(key, n + 1);
    return n;
  }

  /// Serializes writers (matches Isar transaction semantics). No lock inside put helpers.
  Future<T> _withLock<T>(Future<T> Function() fn) async {
    final prev = _txnTail ?? Future.value();
    final done = Completer<void>();
    _txnTail = done.future;
    await prev;
    try {
      return await fn();
    } finally {
      done.complete();
    }
  }

  @override
  Future<T> writeTxn<T>(Future<T> Function() fn, {bool silent = false}) =>
      _withLock(fn);

  @override
  Future<void> clearAll() => _withLock(() async {
        await _parents.clear();
        await _students.clear();
        await _links.clear();
        await _examSessions.clear();
        await _studyActivities.clear();
        await _quizScores.clear();
        await _conceptProgress.clear();
        await _streaks.clear();
        await _nudges.clear();
        await _anomalies.clear();
        await _healthRecords.clear();
        await _syncItems.clear();
        await _syncMeta.clear();
        await _metaInts.clear();
      });

  List<T> _allJson<T>(Box<String> box, T Function(Map<String, dynamic>) from) {
    final out = <T>[];
    for (final raw in box.values) {
      try {
        final m = jsonDecode(raw) as Map<String, dynamic>;
        out.add(from(m));
      } catch (_) {}
    }
    return out;
  }

  @override
  Future<List<ParentStudentLinkIsar>> allParentStudentLinks() async =>
      allParentStudentLinksSync();

  @override
  List<ParentStudentLinkIsar> allParentStudentLinksSync() =>
      _allJson(_links, linkFromMap);

  @override
  StudentIsar? studentByApiIdSync(String apiId) {
    for (final raw in _students.values) {
      try {
        final m = jsonDecode(raw) as Map<String, dynamic>;
        if (m['apiId'] == apiId) return studentFromMap(m);
      } catch (_) {}
    }
    return null;
  }

  @override
  List<StudentIsar> allStudentsSync() => _allJson(_students, studentFromMap);

  @override
  List<NudgeIsar> allNudgesSync() => _allJson(_nudges, nudgeFromMap);

  @override
  int unreadNudgesCountSync() =>
      allNudgesSync().where((n) => !n.isRead).length;

  @override
  List<StreakIsar> allStreaksSync() => _allJson(_streaks, streakFromMap);

  @override
  List<StudyActivityIsar> allStudyActivitiesSync() =>
      _allJson(_studyActivities, studyActivityFromMap);

  @override
  List<QuizScoreIsar> allQuizScoresSync() =>
      _allJson(_quizScores, quizScoreFromMap);

  @override
  List<ExamSessionIsar> allExamSessionsSync() =>
      _allJson(_examSessions, examSessionFromMap);

  @override
  List<AnomalyIsar> allAnomaliesSync() =>
      _allJson(_anomalies, anomalyFromMap);

  @override
  List<ConceptProgressIsar> allConceptProgressSync() =>
      _allJson(_conceptProgress, conceptProgressFromMap);

  @override
  List<HealthRecordIsar> allHealthRecordsSync() =>
      _allJson(_healthRecords, healthRecordFromMap);

  @override
  Future<DateTime?> getLastSyncedAt() async {
    final raw = _syncMeta.get('0');
    if (raw == null) return null;
    return syncMetaFromMap(jsonDecode(raw) as Map<String, dynamic>).lastSyncedAt;
  }

  @override
  Future<List<SyncItemIsar>> allSyncItems() async =>
      _allJson(_syncItems, syncItemFromMap);

  @override
  Future<SyncMetaIsar?> getSyncMetaFirst() async {
    final raw = _syncMeta.get('0');
    if (raw == null) return null;
    return syncMetaFromMap(jsonDecode(raw) as Map<String, dynamic>);
  }

  Future<void> _putByApiId<T>({
    required Box<String> box,
    required T row,
    required int Function(T) getId,
    required void Function(T, int) setId,
    required String Function(T) getApiId,
    required Map<String, dynamic> Function(T) toMap,
    required String collectionKey,
  }) async {
    var id = getId(row);
    if (entityNeedsNewInternalId(id)) {
      final aid = getApiId(row);
      var found = false;
      for (final key in box.keys) {
        final raw = box.get(key);
        if (raw == null) continue;
        try {
          final m = jsonDecode(raw) as Map<String, dynamic>;
          if (m['apiId'] == aid) {
            id = (m['id'] as num).toInt();
            found = true;
            break;
          }
        } catch (_) {}
      }
      if (!found) {
        id = _nextId(collectionKey);
      }
    }
    setId(row, id);
    await box.put(id.toString(), jsonEncode(toMap(row)));
  }

  @override
  Future<void> putParent(ParentIsar row) => _putByApiId(
        box: _parents,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: parentToMap,
        collectionKey: 'parents',
      );

  @override
  Future<void> putStudent(StudentIsar row) => _putByApiId(
        box: _students,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: studentToMap,
        collectionKey: 'students',
      );

  @override
  Future<void> putParentStudentLink(ParentStudentLinkIsar row) => _putByApiId(
        box: _links,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: linkToMap,
        collectionKey: 'links',
      );

  @override
  Future<void> deleteParentStudentLinkById(int id) async {
    await _links.delete(id.toString());
  }

  @override
  Future<void> putExamSession(ExamSessionIsar row) => _putByApiId(
        box: _examSessions,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: examSessionToMap,
        collectionKey: 'exam_sessions',
      );

  @override
  Future<void> putStudyActivity(StudyActivityIsar row) => _putByApiId(
        box: _studyActivities,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: studyActivityToMap,
        collectionKey: 'study_activities',
      );

  @override
  Future<void> putQuizScore(QuizScoreIsar row) => _putByApiId(
        box: _quizScores,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: quizScoreToMap,
        collectionKey: 'quiz_scores',
      );

  @override
  Future<void> putConceptProgress(ConceptProgressIsar row) => _putByApiId(
        box: _conceptProgress,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: conceptProgressToMap,
        collectionKey: 'concept_progress',
      );

  @override
  Future<void> putStreak(StreakIsar row) => _putByApiId(
        box: _streaks,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: streakToMap,
        collectionKey: 'streaks',
      );

  @override
  Future<void> putNudge(NudgeIsar row) => _putByApiId(
        box: _nudges,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: nudgeToMap,
        collectionKey: 'nudges',
      );

  @override
  Future<void> putAnomaly(AnomalyIsar row) => _putByApiId(
        box: _anomalies,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: anomalyToMap,
        collectionKey: 'anomalies',
      );

  @override
  Future<void> putHealthRecord(HealthRecordIsar row) => _putByApiId(
        box: _healthRecords,
        row: row,
        getId: (o) => o.id,
        setId: (o, id) => o.id = id,
        getApiId: (o) => o.apiId,
        toMap: healthRecordToMap,
        collectionKey: 'health_records',
      );

  @override
  Future<void> putSyncItem(SyncItemIsar row) async {
    var id = row.id;
    if (entityNeedsNewInternalId(id)) {
      id = _nextId('sync_items');
    }
    row.id = id;
    await _syncItems.put(id.toString(), jsonEncode(syncItemToMap(row)));
  }

  @override
  Future<void> putSyncMeta(SyncMetaIsar row) async {
    if (entityNeedsNewInternalId(row.id)) {
      row.id = 1;
    }
    await _syncMeta.put('0', jsonEncode(syncMetaToMap(row)));
  }

  @override
  Future<void> deleteNudgeById(int id) async {
    await _nudges.delete(id.toString());
  }
}
