import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/api_config.dart';
import 'storage_service.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService(ref.read(storageServiceProvider));
});

class ApiService {
  ApiService(this._storage) : _dio = _createDio(_storage);

  final StorageService _storage;
  final Dio _dio;

  Dio get client => _dio;

  static Dio _createDio(StorageService storage) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
        validateStatus: (status) => status != null && status < 500,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await storage.readToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
      ),
    );

    dio.interceptors.add(_RetryInterceptor(dio));
    return dio;
  }

  /// Returns true if the session is still valid.
  Future<bool> validateToken() async {
    try {
      final res = await _dio.get<Map<String, dynamic>>('/parent/profile');
      return res.statusCode == 200;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) return false;
      rethrow;
    }
  }

  Future<Map<String, dynamic>?> getProfile() async {
    final res = await _dio.get<Map<String, dynamic>>('/parent/profile');
    return res.data;
  }

  Future<Map<String, dynamic>?> postSyncPull({required String studentId}) async {
    final res = await _dio.post<Map<String, dynamic>>(
      '/parent/sync/pull',
      data: {'student_id': studentId},
    );
    return res.data;
  }

  Future<void> postSyncPush(List<Map<String, dynamic>> items) async {
    await _dio.post<void>(
      '/parent/sync/push',
      data: {'items': items},
    );
  }

  Future<List<dynamic>> getTodaySummary(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/students/$studentId/today',
    );
    final list = res.data?['quiz_scores'] ?? res.data?['quizzes'];
    if (list is List) return list;
    return [];
  }

  /// Phase 2 dashboard aggregate (optional backend). Returns null on 404 / error body.
  Future<Map<String, dynamic>?> getParentDashboard(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>('/parent/dashboard/$studentId');
    if (res.statusCode != 200 || res.data == null) return null;
    final raw = res.data!;
    final nested = raw['data'];
    if (nested is Map<String, dynamic>) return nested;
    if (nested is Map) return Map<String, dynamic>.from(nested);
    return raw;
  }

  /// Activity timeline for Today tab (optional backend).
  Future<List<dynamic>> getParentActivityList(String studentId) async {
    final res = await _dio.get<dynamic>('/parent/activity/$studentId');
    if (res.statusCode != 200 || res.data == null) return [];
    final data = res.data;
    if (data is List) return data;
    if (data is Map) {
      for (final key in ['activities', 'items', 'timeline', 'data', 'events']) {
        final list = data[key];
        if (list is List) return list;
      }
    }
    return [];
  }

  Future<List<dynamic>> getChapterRoadmap(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/students/$studentId/chapters',
    );
    final list = res.data?['chapters'];
    if (list is List) return list;
    return [];
  }

  Future<List<dynamic>> getConceptProgress(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/students/$studentId/concepts',
    );
    final list = res.data?['concepts'];
    if (list is List) return list;
    return [];
  }

  Future<Map<String, dynamic>?> getActiveExam(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/students/$studentId/exam/active',
    );
    return res.data?['session'] as Map<String, dynamic>? ?? res.data;
  }

  Future<List<dynamic>> getAnomalies(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/students/$studentId/anomalies',
    );
    final list = res.data?['anomalies'] ?? res.data?['items'];
    if (list is List) return list;
    return [];
  }

  Future<void> submitExamPin({
    required String sessionId,
    required String pin,
  }) async {
    await _dio.post<void>(
      '/parent/exam-sessions/$sessionId/verify-pin',
      data: {'pin': pin},
    );
  }

  Future<Map<String, dynamic>?> getLatestHealth(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/students/$studentId/health/latest',
    );
    return res.data?['record'] as Map<String, dynamic>? ?? res.data;
  }

  Future<void> postHealthRecord(Map<String, dynamic> body) async {
    await _dio.post<void>('/parent/health/record', data: body);
  }

  Future<Map<String, dynamic>?> uploadHealthReportBytes({
    required String studentId,
    required String source,
    required List<int> bytes,
    required String filename,
  }) async {
    final form = FormData.fromMap({
      'student_id': studentId,
      'source': source,
      'file': MultipartFile.fromBytes(bytes, filename: filename),
    });
    final res = await _dio.post<Map<String, dynamic>>(
      '/parent/health/upload-report',
      data: form,
    );
    return res.data;
  }

  Future<void> confirmParsedHealth({
    required String healthRecordId,
    required Map<String, dynamic> corrections,
  }) async {
    await _dio.post<void>(
      '/parent/health/confirm-parsed',
      data: {'health_record_id': healthRecordId, 'corrections': corrections},
    );
  }

  Future<void> postDeviceToken(String token, String platform) async {
    await _dio.post<void>(
      '/parent/device-token',
      data: {'device_token': token, 'platform': platform},
    );
  }

  Future<List<dynamic>> getMirrorResults(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>('/mirror/results/$studentId');
    final list = res.data?['results'];
    if (list is List) return list;
    return [];
  }

  /// `GET /parent/college-log/{student_id}/today`
  Future<Map<String, dynamic>> getCollegeLogToday(String studentId) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/college-log/$studentId/today',
    );
    if (res.statusCode != 200 || res.data == null) return {};
    return Map<String, dynamic>.from(res.data!);
  }

  /// `GET /parent/college-log/{student_id}?days=7`
  Future<Map<String, dynamic>> getCollegeLogWeek(String studentId, {int days = 7}) async {
    final res = await _dio.get<Map<String, dynamic>>(
      '/parent/college-log/$studentId',
      queryParameters: {'days': days},
    );
    if (res.statusCode != 200 || res.data == null) return {};
    return Map<String, dynamic>.from(res.data!);
  }

  Future<List<dynamic>> getNudges() async {
    final res = await _dio.get<Map<String, dynamic>>('/parent/nudges');
    final list = res.data?['nudges'] ?? res.data?['items'];
    if (list is List) return list;
    return [];
  }

  Future<void> markNudgeRead(String nudgeId) async {
    await _dio.post<void>('/parent/nudges/$nudgeId/read');
  }

  Future<void> unlinkStudent(String linkId) async {
    await _dio.delete<void>('/parent/links/$linkId');
  }

  Future<void> updateNotificationPrefs({
    required bool pushEnabled,
    required bool whatsappEnabled,
  }) async {
    await _dio.patch<void>(
      '/parent/settings/notifications',
      data: {
        'push_enabled': pushEnabled,
        'whatsapp_enabled': whatsappEnabled,
      },
    );
  }
}

class _RetryInterceptor extends Interceptor {
  _RetryInterceptor(this._dio);

  static const _maxRetries = 3;

  final Dio _dio;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final req = err.requestOptions;
    final attempt = (req.extra['retry_attempt'] as int?) ?? 0;

    if (!_shouldRetry(err) || attempt >= _maxRetries) {
      return handler.next(err);
    }

    req.extra['retry_attempt'] = attempt + 1;
    final delayMs = (400 * pow(2, attempt)).toInt();
    await Future<void>.delayed(Duration(milliseconds: delayMs));

    try {
      final response = await _dio.fetch<dynamic>(req);
      return handler.resolve(response);
    } on DioException catch (e) {
      return onError(e, handler);
    }
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.connectionError ||
        (err.response?.statusCode != null &&
            err.response!.statusCode! >= 500);
  }
}
