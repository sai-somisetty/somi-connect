import 'platform_backend_stub.dart'
    if (dart.library.io) 'platform_backend_io.dart' as platform_backend;

/// `true` → open [IsarStorage] (Android/iOS). `false` → [HiveStorage] (web/desktop).
bool get useIsarStorage => platform_backend.useIsarStorage;
