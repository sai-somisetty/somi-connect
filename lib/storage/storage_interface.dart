import '../models/isar/isar_collections.dart';

/// Local persistence for offline data. Mobile uses Isar; web/desktop uses Hive.
abstract class StorageInterface {
  Future<T> writeTxn<T>(Future<T> Function() fn, {bool silent = false});

  Future<void> clearAll();

  Future<List<ParentStudentLinkIsar>> allParentStudentLinks();

  List<ParentStudentLinkIsar> allParentStudentLinksSync();

  StudentIsar? studentByApiIdSync(String apiId);

  List<StudentIsar> allStudentsSync();

  List<NudgeIsar> allNudgesSync();

  int unreadNudgesCountSync();

  List<StreakIsar> allStreaksSync();

  List<StudyActivityIsar> allStudyActivitiesSync();

  List<QuizScoreIsar> allQuizScoresSync();

  List<ExamSessionIsar> allExamSessionsSync();

  List<AnomalyIsar> allAnomaliesSync();

  List<ConceptProgressIsar> allConceptProgressSync();

  List<HealthRecordIsar> allHealthRecordsSync();

  Future<DateTime?> getLastSyncedAt();

  Future<List<SyncItemIsar>> allSyncItems();

  Future<SyncMetaIsar?> getSyncMetaFirst();

  Future<void> putParent(ParentIsar row);

  Future<void> putStudent(StudentIsar row);

  Future<void> putParentStudentLink(ParentStudentLinkIsar row);

  Future<void> deleteParentStudentLinkById(int id);

  Future<void> putExamSession(ExamSessionIsar row);

  Future<void> putStudyActivity(StudyActivityIsar row);

  Future<void> putQuizScore(QuizScoreIsar row);

  Future<void> putConceptProgress(ConceptProgressIsar row);

  Future<void> putStreak(StreakIsar row);

  Future<void> putNudge(NudgeIsar row);

  Future<void> deleteNudgeById(int id);

  Future<void> putAnomaly(AnomalyIsar row);

  Future<void> putHealthRecord(HealthRecordIsar row);

  Future<void> putSyncItem(SyncItemIsar row);

  Future<void> putSyncMeta(SyncMetaIsar row);
}
