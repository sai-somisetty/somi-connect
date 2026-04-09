/// Backend and third-party service configuration.
abstract final class ApiConfig {
  static const String baseUrl =
      'https://studybuddy-production-7776.up.railway.app';

  /// Replace with your Supabase project URL (Dashboard → Settings → API).
  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://YOUR_PROJECT.supabase.co',
  );

  /// Replace with your Supabase anon key.
  static const String supabaseAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: 'YOUR_SUPABASE_ANON_KEY',
  );
}
