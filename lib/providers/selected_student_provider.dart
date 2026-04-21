import 'package:flutter_riverpod/flutter_riverpod.dart';

// DEV: hardcoded Ravi. Replace with real parent-student link flow before production.
final selectedStudentIdProvider = StateProvider<String?>(
  (ref) => '11111111-1111-1111-1111-111111111111',
);
