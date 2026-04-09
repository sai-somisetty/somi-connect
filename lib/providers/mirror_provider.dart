import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/api_service.dart';

/// College mirror test rows from `GET /mirror/results/{student_id}`.
final mirrorResultsProvider =
    FutureProvider.autoDispose.family<List<Map<String, dynamic>>, String>((ref, studentId) async {
  final api = ref.watch(apiServiceProvider);
  try {
    final raw = await api.getMirrorResults(studentId);
    return raw
        .whereType<Map>()
        .map((e) => Map<String, dynamic>.from(e))
        .toList();
  } catch (_) {
    return [];
  }
});
