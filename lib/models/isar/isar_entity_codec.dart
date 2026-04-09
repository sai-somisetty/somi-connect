import 'package:isar_community/isar.dart';

import 'isar_collections.dart';

bool entityNeedsNewInternalId(Id id) => id == Isar.autoIncrement;

Map<String, dynamic> parentToMap(ParentIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'authId': o.authId,
      'name': o.name,
      'email': o.email,
      'phone': o.phone,
      'languagePref': o.languagePref,
      'pinHash': o.pinHash,
      'deviceToken': o.deviceToken,
    };

ParentIsar parentFromMap(Map<String, dynamic> m) => ParentIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..authId = m['authId'] as String? ?? ''
  ..name = m['name'] as String? ?? ''
  ..email = m['email'] as String? ?? ''
  ..phone = m['phone'] as String?
  ..languagePref = m['languagePref'] as String? ?? 'te'
  ..pinHash = m['pinHash'] as String?
  ..deviceToken = m['deviceToken'] as String?;

Map<String, dynamic> studentToMap(StudentIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'name': o.name,
      'email': o.email,
      'stream': o.stream,
      'examDate': o.examDate?.toIso8601String(),
      'examLevel': o.examLevel,
    };

StudentIsar studentFromMap(Map<String, dynamic> m) => StudentIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..name = m['name'] as String? ?? ''
  ..email = m['email'] as String? ?? ''
  ..stream = m['stream'] as String?
  ..examDate = _dt(m['examDate'])
  ..examLevel = m['examLevel'] as String?;

Map<String, dynamic> linkToMap(ParentStudentLinkIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'parentId': o.parentId,
      'studentId': o.studentId,
      'relationship': o.relationship,
      'verified': o.verified,
    };

ParentStudentLinkIsar linkFromMap(Map<String, dynamic> m) => ParentStudentLinkIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..parentId = m['parentId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..relationship = m['relationship'] as String? ?? ''
  ..verified = m['verified'] as bool? ?? false;

Map<String, dynamic> examSessionToMap(ExamSessionIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'studentId': o.studentId,
      'examType': o.examType,
      'status': o.status,
      'kioskLocked': o.kioskLocked,
      'startedAt': o.startedAt?.toIso8601String(),
      'endedAt': o.endedAt?.toIso8601String(),
      'totalQuestions': o.totalQuestions,
      'answeredCount': o.answeredCount,
      'parentPinVerified': o.parentPinVerified,
    };

ExamSessionIsar examSessionFromMap(Map<String, dynamic> m) => ExamSessionIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..examType = m['examType'] as String? ?? ''
  ..status = m['status'] as String? ?? ''
  ..kioskLocked = m['kioskLocked'] as bool? ?? false
  ..startedAt = _dt(m['startedAt'])
  ..endedAt = _dt(m['endedAt'])
  ..totalQuestions = (m['totalQuestions'] as num?)?.toInt()
  ..answeredCount = (m['answeredCount'] as num?)?.toInt()
  ..parentPinVerified = m['parentPinVerified'] as bool? ?? false;

Map<String, dynamic> studyActivityToMap(StudyActivityIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'studentId': o.studentId,
      'activityDate': o.activityDate.toIso8601String(),
      'activityType': o.activityType,
      'durationMinutes': o.durationMinutes,
      'chapterId': o.chapterId,
      'conceptId': o.conceptId,
    };

StudyActivityIsar studyActivityFromMap(Map<String, dynamic> m) => StudyActivityIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..activityDate = _dt(m['activityDate']) ?? DateTime.fromMillisecondsSinceEpoch(0)
  ..activityType = m['activityType'] as String? ?? ''
  ..durationMinutes = (m['durationMinutes'] as num?)?.toInt()
  ..chapterId = m['chapterId'] as String?
  ..conceptId = m['conceptId'] as String?;

Map<String, dynamic> quizScoreToMap(QuizScoreIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'studentId': o.studentId,
      'score': o.score,
      'total': o.total,
      'chapter': o.chapter,
      'createdAt': o.createdAt?.toIso8601String(),
    };

QuizScoreIsar quizScoreFromMap(Map<String, dynamic> m) => QuizScoreIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..score = (m['score'] as num?)?.toInt()
  ..total = (m['total'] as num?)?.toInt()
  ..chapter = m['chapter'] as String?
  ..createdAt = _dt(m['createdAt']);

Map<String, dynamic> conceptProgressToMap(ConceptProgressIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'studentId': o.studentId,
      'conceptName': o.conceptName,
      'progressPercent': o.progressPercent,
    };

ConceptProgressIsar conceptProgressFromMap(Map<String, dynamic> m) => ConceptProgressIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..conceptName = m['conceptName'] as String? ?? ''
  ..progressPercent = (m['progressPercent'] as num?)?.toDouble() ?? 0;

Map<String, dynamic> streakToMap(StreakIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'studentId': o.studentId,
      'currentStreak': o.currentStreak,
      'maxStreak': o.maxStreak,
    };

StreakIsar streakFromMap(Map<String, dynamic> m) => StreakIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..currentStreak = (m['currentStreak'] as num?)?.toInt() ?? 0
  ..maxStreak = (m['maxStreak'] as num?)?.toInt() ?? 0;

Map<String, dynamic> nudgeToMap(NudgeIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'parentId': o.parentId,
      'studentId': o.studentId,
      'nudgeType': o.nudgeType,
      'title': o.title,
      'body': o.body,
      'priority': o.priority,
      'isRead': o.isRead,
      'createdAt': o.createdAt?.toIso8601String(),
    };

NudgeIsar nudgeFromMap(Map<String, dynamic> m) => NudgeIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..parentId = m['parentId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..nudgeType = m['nudgeType'] as String? ?? ''
  ..title = m['title'] as String? ?? ''
  ..body = m['body'] as String? ?? ''
  ..priority = m['priority'] as String? ?? 'normal'
  ..isRead = m['isRead'] as bool? ?? false
  ..createdAt = _dt(m['createdAt']);

Map<String, dynamic> anomalyToMap(AnomalyIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'examSessionId': o.examSessionId,
      'studentId': o.studentId,
      'anomalyType': o.anomalyType,
      'severity': o.severity,
      'details': o.details,
      'createdAt': o.createdAt?.toIso8601String(),
    };

AnomalyIsar anomalyFromMap(Map<String, dynamic> m) => AnomalyIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..examSessionId = m['examSessionId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..anomalyType = m['anomalyType'] as String? ?? ''
  ..severity = m['severity'] as String? ?? ''
  ..details = m['details'] as String?
  ..createdAt = _dt(m['createdAt']);

Map<String, dynamic> healthRecordToMap(HealthRecordIsar o) => {
      'id': o.id,
      'apiId': o.apiId,
      'studentId': o.studentId,
      'recordType': o.recordType,
      'recordDate': o.recordDate?.toIso8601String(),
      'heightCm': o.heightCm,
      'weightKg': o.weightKg,
      'bmi': o.bmi,
      'vitaminB12': o.vitaminB12,
      'vitaminD3': o.vitaminD3,
      'ironLevel': o.ironLevel,
      'ferritin': o.ferritin,
      'hemoglobin': o.hemoglobin,
    };

HealthRecordIsar healthRecordFromMap(Map<String, dynamic> m) => HealthRecordIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..apiId = m['apiId'] as String? ?? ''
  ..studentId = m['studentId'] as String? ?? ''
  ..recordType = m['recordType'] as String? ?? ''
  ..recordDate = _dt(m['recordDate'])
  ..heightCm = (m['heightCm'] as num?)?.toDouble()
  ..weightKg = (m['weightKg'] as num?)?.toDouble()
  ..bmi = (m['bmi'] as num?)?.toDouble()
  ..vitaminB12 = (m['vitaminB12'] as num?)?.toDouble()
  ..vitaminD3 = (m['vitaminD3'] as num?)?.toDouble()
  ..ironLevel = (m['ironLevel'] as num?)?.toDouble()
  ..ferritin = (m['ferritin'] as num?)?.toDouble()
  ..hemoglobin = (m['hemoglobin'] as num?)?.toDouble();

Map<String, dynamic> syncItemToMap(SyncItemIsar o) => {
      'id': o.id,
      'tableName': o.tableName,
      'operation': o.operation,
      'payloadJson': o.payloadJson,
      'synced': o.synced,
      'retryCount': o.retryCount,
      'createdAt': o.createdAt?.toIso8601String(),
    };

SyncItemIsar syncItemFromMap(Map<String, dynamic> m) => SyncItemIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..tableName = m['tableName'] as String? ?? ''
  ..operation = m['operation'] as String? ?? ''
  ..payloadJson = m['payloadJson'] as String? ?? ''
  ..synced = m['synced'] as bool? ?? false
  ..retryCount = (m['retryCount'] as num?)?.toInt() ?? 0
  ..createdAt = _dt(m['createdAt']);

Map<String, dynamic> syncMetaToMap(SyncMetaIsar o) => {
      'id': o.id,
      'lastSyncedAt': o.lastSyncedAt?.toIso8601String(),
    };

SyncMetaIsar syncMetaFromMap(Map<String, dynamic> m) => SyncMetaIsar()
  ..id = (m['id'] as num?)?.toInt() ?? Isar.autoIncrement
  ..lastSyncedAt = _dt(m['lastSyncedAt']);

DateTime? _dt(Object? v) {
  if (v == null) return null;
  if (v is DateTime) return v;
  return DateTime.tryParse(v.toString());
}
