import 'package:isar_community/isar.dart';

part 'isar_collections.g.dart';

@collection
class ParentIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String authId;
  late String name;
  late String email;
  String? phone;
  late String languagePref;
  String? pinHash;
  String? deviceToken;
}

@collection
class StudentIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String name;
  late String email;
  String? stream;
  DateTime? examDate;
  String? examLevel;
}

@collection
class ParentStudentLinkIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String parentId;
  late String studentId;
  late String relationship;
  late bool verified;
}

@collection
class ExamSessionIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String studentId;
  late String examType;
  late String status;
  late bool kioskLocked;
  DateTime? startedAt;
  DateTime? endedAt;
  int? totalQuestions;
  int? answeredCount;
  late bool parentPinVerified;
}

@collection
class StudyActivityIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String studentId;
  late DateTime activityDate;
  late String activityType;
  int? durationMinutes;
  String? chapterId;
  String? conceptId;
}

@collection
class QuizScoreIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String studentId;
  int? score;
  int? total;
  String? chapter;
  DateTime? createdAt;
}

@collection
class ConceptProgressIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String studentId;
  late String conceptName;

  /// 0–100
  late double progressPercent;
}

@collection
class StreakIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String studentId;
  late int currentStreak;
  late int maxStreak;
}

@collection
class NudgeIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String parentId;
  late String studentId;
  late String nudgeType;
  late String title;
  late String body;
  late String priority;
  late bool isRead;
  DateTime? createdAt;
}

@collection
class AnomalyIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String examSessionId;
  late String studentId;
  late String anomalyType;
  late String severity;
  String? details;
  DateTime? createdAt;
}

@collection
class HealthRecordIsar {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String apiId;

  late String studentId;
  late String recordType;
  DateTime? recordDate;
  double? heightCm;
  double? weightKg;
  double? bmi;
  double? vitaminB12;
  double? vitaminD3;
  double? ironLevel;
  double? ferritin;
  double? hemoglobin;
}

@collection
class SyncItemIsar {
  Id id = Isar.autoIncrement;

  late String tableName;
  late String operation;
  late String payloadJson;
  late bool synced;
  late int retryCount;
  DateTime? createdAt;
}

/// Local sync cursor — keep a single row (first `put` gets id 1; reuse via query).
@collection
class SyncMetaIsar {
  Id id = Isar.autoIncrement;

  DateTime? lastSyncedAt;
}
