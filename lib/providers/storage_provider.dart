import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/storage_interface.dart';

final storageProvider = Provider<StorageInterface>((ref) {
  throw UnimplementedError('Storage must be overridden in ProviderScope');
});
