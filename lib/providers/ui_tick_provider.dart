import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Increment to ask listeners (exam monitor, nudges, etc.) to refresh from local storage.
final realtimeTickProvider = StateProvider<int>((ref) => 0);
