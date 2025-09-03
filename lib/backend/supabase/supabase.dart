import 'package:supabase_flutter/supabase_flutter.dart';

export 'database/database.dart';

String _kSupabaseUrl = 'https://ugrbrgxyppekcejmasbt.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVncmJyZ3h5cHBla2Nlam1hc2J0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTUxOTE0MTgsImV4cCI6MjA3MDc2NzQxOH0.vivJyPPiM3b0hM2MNUky923s9oKeqf0ear3DVHvbZwk';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        headers: {
          'X-Client-Info': 'flutterflow',
        },
        anonKey: _kSupabaseAnonKey,
        debug: false,
        authOptions:
            FlutterAuthClientOptions(authFlowType: AuthFlowType.implicit),
      );
}
