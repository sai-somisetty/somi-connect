import 'package:flutter/foundation.dart';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/isar/isar_collections.dart';
import 'hive_storage.dart';
import 'isar_storage.dart';
import 'platform_backend.dart';
import 'storage_interface.dart';

Future<StorageInterface> createAppStorage() async {
  if (useIsarStorage) {
    final dir = await getApplicationSupportDirectory();
    final isar = await Isar.open(
      [
        ParentIsarSchema,
        StudentIsarSchema,
        ParentStudentLinkIsarSchema,
        ExamSessionIsarSchema,
        StudyActivityIsarSchema,
        QuizScoreIsarSchema,
        ConceptProgressIsarSchema,
        StreakIsarSchema,
        NudgeIsarSchema,
        AnomalyIsarSchema,
        HealthRecordIsarSchema,
        SyncItemIsarSchema,
        SyncMetaIsarSchema,
      ],
      directory: dir.path,
      inspector: kDebugMode,
    );
    return IsarStorage(isar);
  }
  return HiveStorage.open();
}
