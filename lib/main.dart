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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await initializeDateFormatting('te');
  } catch (_) {
    await initializeDateFormatting();
  }

  if (kIsWeb) {
    await Hive.initFlutter();
  } else {
    final dir = await getApplicationSupportDirectory();
    await Hive.initFlutter('${dir.path}/hive_somi');
  }

  if (_hasSupabaseConfig) {
    await Supabase.initialize(
      url: ApiConfig.supabaseUrl,
      anonKey: ApiConfig.supabaseAnonKey,
    );
  }

  final storage = await createAppStorage();

  runApp(
    ProviderScope(
      overrides: [
        storageProvider.overrideWithValue(storage),
      ],
      child: const SomiApp(),
    ),
  );
}

bool get _hasSupabaseConfig =>
    !ApiConfig.supabaseUrl.contains('YOUR_PROJECT') &&
    ApiConfig.supabaseAnonKey != 'YOUR_SUPABASE_ANON_KEY';
