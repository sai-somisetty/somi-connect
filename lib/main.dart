import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app.dart';
import 'config/api_config.dart';
import 'providers/storage_provider.dart';
import 'storage/app_storage_factory.dart';
import 'storage/storage_interface.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('[SOMI] init: WidgetsFlutterBinding OK');

  try {
    await initializeDateFormatting('te');
    debugPrint('[SOMI] init: dateFormatting (te) OK');
  } catch (e, st) {
    debugPrint('[SOMI] init: dateFormatting (te) failed: $e\n$st');
    try {
      await initializeDateFormatting();
      debugPrint('[SOMI] init: dateFormatting (default) OK');
    } catch (e2, st2) {
      debugPrint('[SOMI] init: dateFormatting (default) failed: $e2\n$st2');
    }
  }

  await _initHiveWithFallback();

  if (!kIsWeb) {
    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
        debugPrint('[SOMI] init: Firebase.initializeApp OK');
      } else {
        debugPrint('[SOMI] init: Firebase already initialized (${Firebase.apps.length} app(s))');
      }
    } catch (e, st) {
      debugPrint('[SOMI] init: Firebase.initializeApp failed (app continues): $e\n$st');
    }
  } else {
    debugPrint('[SOMI] init: Firebase skipped (web)');
  }

  if (_hasSupabaseConfig) {
    try {
      await Supabase.initialize(
        url: ApiConfig.supabaseUrl,
        anonKey: ApiConfig.supabaseAnonKey,
      );
      debugPrint('[SOMI] init: Supabase.initialize OK');
    } catch (e, st) {
      debugPrint('[SOMI] init: Supabase.initialize failed (app continues without realtime): $e\n$st');
    }
  } else {
    debugPrint('[SOMI] init: Supabase skipped (no config)');
  }

  late final StorageInterface storage;
  try {
    storage = await createAppStorage();
    debugPrint('[SOMI] init: createAppStorage OK (${storage.runtimeType})');
  } catch (e, st) {
    debugPrint('[SOMI] init: createAppStorage failed: $e\n$st');
    rethrow;
  }

  debugPrint('[SOMI] init: runApp');
  runApp(
    ProviderScope(
      overrides: [
        storageProvider.overrideWithValue(storage),
      ],
      child: const SomiApp(),
    ),
  );
}

/// Hive must be initialized before [HiveStorage.open] (used as mobile fallback if Isar fails).
Future<void> _initHiveWithFallback() async {
  try {
    if (kIsWeb) {
      await Hive.initFlutter();
    } else {
      final dir = await getApplicationSupportDirectory();
      await Hive.initFlutter('${dir.path}/hive_somi');
    }
    debugPrint('[SOMI] init: Hive.initFlutter (primary) OK');
  } catch (e, st) {
    debugPrint('[SOMI] init: Hive.initFlutter (primary) failed: $e\n$st');
    if (kIsWeb) {
      debugPrint('[SOMI] init: no Hive fallback on web — rethrow');
      rethrow;
    }
    try {
      final tmp = await getTemporaryDirectory();
      final path = '${tmp.path}/somi_hive_fallback';
      Hive.init(path);
      debugPrint('[SOMI] init: Hive.init (temp / ephemeral fallback) OK → $path');
    } catch (e2, st2) {
      debugPrint('[SOMI] init: Hive.init (temp) failed: $e2\n$st2');
      debugPrint(
        '[SOMI] init: proceeding without Hive — OK if Isar succeeds; '
        'createAppStorage will try emergency Hive.init if Isar fails',
      );
    }
  }
}

bool get _hasSupabaseConfig =>
    !ApiConfig.supabaseUrl.contains('YOUR_PROJECT') &&
    ApiConfig.supabaseAnonKey != 'YOUR_SUPABASE_ANON_KEY';
