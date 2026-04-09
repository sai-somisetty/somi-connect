import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config/api_config.dart';
import '../storage/storage_interface.dart';
import 'storage_service.dart';

final authDioProvider = Provider<Dio>((ref) {
  final d = Dio(
    BaseOptions(
      baseUrl: ApiConfig.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      headers: {'Content-Type': 'application/json'},
      validateStatus: (status) => status != null && status < 500,
    ),
  );
  return d;
});

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService(
    ref.read(storageServiceProvider),
    ref.read(authDioProvider),
  );
});

class AuthService {
  AuthService(this._storage, this._dio);

  final StorageService _storage;
  final Dio _dio;

  Future<void> sendOtp(String email) async {
    final res = await _dio.post<Map<String, dynamic>>(
      '/parent/auth/send-otp',
      data: {'email': email},
    );
    if (res.statusCode != null && res.statusCode! >= 400) {
      throw StateError(_errorMessageFromResponse(res.data));
    }
  }

  /// Returns whether this is a new parent (needs profile setup).
  Future<bool> verifyOtp(String email, String otp) async {
    final res = await _dio.post<Map<String, dynamic>>(
      '/parent/auth/verify-otp',
      data: {'email': email, 'token': otp},
    );
    final data = res.data;
    if (res.statusCode != null && res.statusCode! >= 400) {
      throw StateError(_errorMessageFromResponse(data));
    }
    final token =
        data?['access_token'] as String? ?? data?['token'] as String?;
    if (token == null || token.isEmpty) {
      throw StateError('verify-otp response missing access_token');
    }
    await _storage.saveToken(token);
    final isNew = data?['is_new'] as bool? ?? data?['isNew'] as bool? ?? false;
    return isNew;
  }

  static String _errorMessageFromResponse(Object? body) {
    if (body is Map<String, dynamic>) {
      final detail = body['detail'];
      if (detail is String && detail.isNotEmpty) return detail;
      if (detail is List && detail.isNotEmpty) {
        return detail.first.toString();
      }
      final err = body['error']?.toString();
      if (err != null && err.isNotEmpty) return err;
      final msg = body['message']?.toString();
      if (msg != null && msg.isNotEmpty) return msg;
    }
    return 'Request failed';
  }

  Future<void> saveProfile({
    required String name,
    String? phone,
    required String language,
  }) async {
    final token = await _storage.readToken();
    await _dio.post<Map<String, dynamic>>(
      '/parent/profile',
      data: {
        'name': name,
        if (phone != null && phone.isNotEmpty) 'phone': phone,
        'language_pref': language,
      },
      options: Options(headers: _bearer(token)),
    );
  }

  /// Returns linked [student_id] when the API includes it in the response.
  Future<String?> linkStudent({
    required String studentEmail,
    required String relationship,
  }) async {
    final token = await _storage.readToken();
    final res = await _dio.post<Map<String, dynamic>>(
      '/parent/link-student',
      data: {
        'student_email': studentEmail,
        'relationship': relationship,
      },
      options: Options(headers: _bearer(token)),
    );
    final data = res.data;
    return data?['student_id'] as String? ?? data?['studentId'] as String?;
  }

  Future<void> setPin(String pin) async {
    final token = await _storage.readToken();
    await _dio.post<Map<String, dynamic>>(
      '/parent/set-pin',
      data: {'pin': pin},
      options: Options(headers: _bearer(token)),
    );
  }

  Future<void> logout(StorageInterface localStorage) async {
    await _storage.clearAll();
    await localStorage.clearAll();
  }

  Map<String, String> _bearer(String? token) {
    if (token == null || token.isEmpty) {
      return {};
    }
    return {'Authorization': 'Bearer $token'};
  }
}
