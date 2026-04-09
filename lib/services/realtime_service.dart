import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/isar/isar_collections.dart';
import '../providers/storage_provider.dart';
import '../providers/ui_tick_provider.dart';
import '../storage/storage_interface.dart';
import 'sync_service.dart';

final realtimeServiceProvider = Provider<RealtimeService?>((ref) {
  try {
    final client = Supabase.instance.client;
    return RealtimeService(
      client: client,
      storage: ref.watch(storageProvider),
      ref: ref,
    );
  } catch (_) {
    return null;
  }
});

class RealtimeService {
  RealtimeService({
    required SupabaseClient client,
    required StorageInterface storage,
    required Ref ref,
  })  : _client = client,
        _storage = storage,
        _ref = ref;

  final SupabaseClient _client;
  final StorageInterface _storage;
  final Ref _ref;

  RealtimeChannel? _examChannel;
  RealtimeChannel? _anomalyChannel;
  RealtimeChannel? _nudgeChannel;

  void subscribeForStudent(String studentId) {
    unsubscribe();
    _examChannel = _client.channel('exam_sessions_$studentId')
      ..onPostgresChanges(
        event: PostgresChangeEvent.all,
        schema: 'public',
        table: 'exam_sessions',
        filter: PostgresChangeFilter(
          type: PostgresChangeFilterType.eq,
          column: 'student_id',
          value: studentId,
        ),
        callback: (payload) async {
          await _handleExamPayload(payload);
        },
      )
      ..subscribe();

    _anomalyChannel = _client.channel('anomaly_logs_$studentId')
      ..onPostgresChanges(
        event: PostgresChangeEvent.all,
        schema: 'public',
        table: 'anomaly_logs',
        filter: PostgresChangeFilter(
          type: PostgresChangeFilterType.eq,
          column: 'student_id',
          value: studentId,
        ),
        callback: (payload) async {
          await _handleAnomalyPayload(payload);
        },
      )
      ..subscribe();

    _nudgeChannel = _client.channel('nudges_parent')
      ..onPostgresChanges(
        event: PostgresChangeEvent.all,
        schema: 'public',
        table: 'nudges',
        callback: (payload) async {
          await _handleNudgePayload(payload);
        },
      )
      ..subscribe();
  }

  void unsubscribe() {
    _examChannel?.unsubscribe();
    _anomalyChannel?.unsubscribe();
    _nudgeChannel?.unsubscribe();
    _examChannel = null;
    _anomalyChannel = null;
    _nudgeChannel = null;
  }

  Future<void> _handleExamPayload(PostgresChangePayload payload) async {
    final row = payload.newRecord.isNotEmpty ? payload.newRecord : payload.oldRecord;
    if (row.isEmpty) return;
    try {
      await _storage.writeTxn(() async {
        final id = row['id']?.toString() ?? '';
        if (id.isEmpty) return;
        final e = ExamSessionIsar()
          ..apiId = id
          ..studentId = row['student_id']?.toString() ?? ''
          ..examType = row['exam_type']?.toString() ?? ''
          ..status = row['status']?.toString() ?? ''
          ..kioskLocked = row['kiosk_locked'] as bool? ?? false
          ..startedAt = _parseDt(row['started_at'])
          ..endedAt = _parseDt(row['ended_at'])
          ..totalQuestions = (row['total_questions'] as num?)?.toInt()
          ..answeredCount = (row['answered_count'] as num?)?.toInt()
          ..parentPinVerified = row['parent_pin_verified'] as bool? ?? false;
        await _storage.putExamSession(e);
      });
      _bump();
    } catch (e, st) {
      debugPrint('realtime exam: $e $st');
    }
  }

  Future<void> _handleAnomalyPayload(PostgresChangePayload payload) async {
    final row = payload.newRecord;
    if (row.isEmpty) return;
    try {
      await _storage.writeTxn(() async {
        final id = row['id']?.toString() ?? '';
        if (id.isEmpty) return;
        final a = AnomalyIsar()
          ..apiId = id
          ..examSessionId = row['exam_session_id']?.toString() ?? ''
          ..studentId = row['student_id']?.toString() ?? ''
          ..anomalyType = row['anomaly_type']?.toString() ?? ''
          ..severity = row['severity']?.toString() ?? ''
          ..details = row['details']?.toString()
          ..createdAt = _parseDt(row['created_at']);
        await _storage.putAnomaly(a);
      });
      _bump();
    } catch (e, st) {
      debugPrint('realtime anomaly: $e $st');
    }
  }

  Future<void> _handleNudgePayload(PostgresChangePayload payload) async {
    final row = payload.newRecord;
    if (row.isEmpty) return;
    try {
      await _storage.writeTxn(() async {
        final id = row['id']?.toString() ?? '';
        if (id.isEmpty) return;
        final n = NudgeIsar()
          ..apiId = id
          ..parentId = row['parent_id']?.toString() ?? ''
          ..studentId = row['student_id']?.toString() ?? ''
          ..nudgeType = row['nudge_type']?.toString() ?? ''
          ..title = row['title']?.toString() ?? ''
          ..body = row['body']?.toString() ?? ''
          ..priority = row['priority']?.toString() ?? 'normal'
          ..isRead = row['is_read'] as bool? ?? false
          ..createdAt = _parseDt(row['created_at']);
        await _storage.putNudge(n);
      });
      _bump();
    } catch (e, st) {
      debugPrint('realtime nudge: $e $st');
    }
  }

  DateTime? _parseDt(Object? v) {
    if (v == null) return null;
    return DateTime.tryParse(v.toString());
  }

  void _bump() {
    _ref.read(realtimeTickProvider.notifier).state++;
    unawaited(_ref.read(syncServiceProvider).pushToServer());
  }
}
