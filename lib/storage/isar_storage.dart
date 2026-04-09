import 'package:isar_community/isar.dart';

import '../models/isar/isar_collections.dart';
import 'storage_interface.dart';

class IsarStorage implements StorageInterface {
  IsarStorage(this._isar);

  final Isar _isar;

  @override
  Future<T> writeTxn<T>(Future<T> Function() fn, {bool silent = false}) =>
      _isar.writeTxn(fn, silent: silent);

  @override
  Future<void> clearAll() => _isar.clear();

  @override
  Future<List<ParentStudentLinkIsar>> allParentStudentLinks() =>
      _isar.parentStudentLinkIsars.where().anyId().findAll();

  @override
  List<ParentStudentLinkIsar> allParentStudentLinksSync() =>
      _isar.parentStudentLinkIsars.where().anyId().findAllSync();

  @override
  StudentIsar? studentByApiIdSync(String apiId) =>
      _isar.studentIsars.where().apiIdEqualTo(apiId).findFirstSync();

  @override
  List<StudentIsar> allStudentsSync() =>
      _isar.studentIsars.where().anyId().findAllSync();

  @override
  List<NudgeIsar> allNudgesSync() =>
      _isar.nudgeIsars.where().anyId().findAllSync();

  @override
  int unreadNudgesCountSync() =>
      _isar.nudgeIsars.where().anyId().findAllSync().where((n) => !n.isRead).length;

  @override
  List<StreakIsar> allStreaksSync() =>
      _isar.streakIsars.where().anyId().findAllSync();

  @override
  List<StudyActivityIsar> allStudyActivitiesSync() =>
      _isar.studyActivityIsars.where().anyId().findAllSync();

  @override
  List<QuizScoreIsar> allQuizScoresSync() =>
      _isar.quizScoreIsars.where().anyId().findAllSync();

  @override
  List<ExamSessionIsar> allExamSessionsSync() =>
      _isar.examSessionIsars.where().anyId().findAllSync();

  @override
  List<AnomalyIsar> allAnomaliesSync() =>
      _isar.anomalyIsars.where().anyId().findAllSync();

  @override
  List<ConceptProgressIsar> allConceptProgressSync() =>
      _isar.conceptProgressIsars.where().anyId().findAllSync();

  @override
  List<HealthRecordIsar> allHealthRecordsSync() =>
      _isar.healthRecordIsars.where().anyId().findAllSync();

  @override
  Future<DateTime?> getLastSyncedAt() async =>
      (await _isar.syncMetaIsars.where().anyId().findFirst())?.lastSyncedAt;

  @override
  Future<List<SyncItemIsar>> allSyncItems() =>
      _isar.syncItemIsars.where().anyId().findAll();

  @override
  Future<SyncMetaIsar?> getSyncMetaFirst() =>
      _isar.syncMetaIsars.where().anyId().findFirst();

  @override
  Future<void> putParent(ParentIsar row) => _isar.parentIsars.put(row);

  @override
  Future<void> putStudent(StudentIsar row) => _isar.studentIsars.put(row);

  @override
  Future<void> putParentStudentLink(ParentStudentLinkIsar row) =>
      _isar.parentStudentLinkIsars.put(row);

  @override
  Future<void> deleteParentStudentLinkById(int id) =>
      _isar.parentStudentLinkIsars.delete(id);

  @override
  Future<void> putExamSession(ExamSessionIsar row) =>
      _isar.examSessionIsars.put(row);

  @override
  Future<void> putStudyActivity(StudyActivityIsar row) =>
      _isar.studyActivityIsars.put(row);

  @override
  Future<void> putQuizScore(QuizScoreIsar row) =>
      _isar.quizScoreIsars.put(row);

  @override
  Future<void> putConceptProgress(ConceptProgressIsar row) =>
      _isar.conceptProgressIsars.put(row);

  @override
  Future<void> putStreak(StreakIsar row) => _isar.streakIsars.put(row);

  @override
  Future<void> putNudge(NudgeIsar row) => _isar.nudgeIsars.put(row);

  @override
  Future<void> deleteNudgeById(int id) => _isar.nudgeIsars.delete(id);

  @override
  Future<void> putAnomaly(AnomalyIsar row) => _isar.anomalyIsars.put(row);

  @override
  Future<void> putHealthRecord(HealthRecordIsar row) =>
      _isar.healthRecordIsars.put(row);

  @override
  Future<void> putSyncItem(SyncItemIsar row) => _isar.syncItemIsars.put(row);

  @override
  Future<void> putSyncMeta(SyncMetaIsar row) => _isar.syncMetaIsars.put(row);
}
