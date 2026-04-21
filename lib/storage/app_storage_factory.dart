import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/isar/isar_collections.dart';
import 'hive_storage.dart';
import 'isar_storage.dart';
import 'platform_backend.dart';
import 'storage_interface.dart';

Future<StorageInterface> createAppStorage() async {
  if (useIsarStorage) {
    try {
      final dir = await getApplicationSupportDirectory();
      debugPrint('[SOMI] storage: opening Isar in ${dir.path}');
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
      debugPrint('[SOMI] storage: Isar OK');
      return IsarStorage(isar);
    } catch (e, st) {
      debugPrint('[SOMI] storage: Isar.open failed, using Hive fallback: $e\n$st');
    }
  }

  try {
    debugPrint('[SOMI] storage: HiveStorage.open');
    return await HiveStorage.open();
  } catch (e, st) {
    debugPrint('[SOMI] storage: HiveStorage.open failed: $e\n$st');
    if (useIsarStorage) {
      try {
        final tmp = await getTemporaryDirectory();
        final path = '${tmp.path}/somi_hive_emergency';
        Hive.init(path);
        debugPrint('[SOMI] storage: Hive.init emergency path → $path');
        return await HiveStorage.open();
      } catch (e2, st2) {
        debugPrint('[SOMI] storage: emergency Hive failed: $e2\n$st2');
      }
    }
    rethrow;
  }
}
