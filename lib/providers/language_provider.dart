import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppLanguage { english, telugu }

final languageProvider =
    StateProvider<AppLanguage>((ref) => AppLanguage.telugu);
