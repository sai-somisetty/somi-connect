/// Backend and third-party service configuration.
abstract final class ApiConfig {
  static const String baseUrl =
      'https://studybuddy-production-7776.up.railway.app';

  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://rwuntjxogfrqxaphjolj.supabase.co',
  );

  static const String supabaseAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ3dW50anhvZ2ZycXhhcGhqb2xqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM2MDA2NTAsImV4cCI6MjA4OTE3NjY1MH0.P-ETZNs9MBbnWqK95prP6Bq5590aLqe4WbQ1EJxjTUo',
  );
}
