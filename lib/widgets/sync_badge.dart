import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../config/theme.dart';

/// "Updated X min ago" (green) or "Offline" (warning) with icon.
class SyncBadge extends StatefulWidget {
  const SyncBadge({
    super.key,
    this.lastSyncedAt,
  });

  final DateTime? lastSyncedAt;

  @override
  State<SyncBadge> createState() => _SyncBadgeState();
}

class _SyncBadgeState extends State<SyncBadge> {
  final _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _sub;
  bool _online = true;

  static const _iconSuccess = Color(0xFF276749);
  static const _iconWarning = Color(0xFFB7791F);

  @override
  void initState() {
    super.initState();
    _refreshConnectivity();
    _sub = _connectivity.onConnectivityChanged.listen((results) {
      if (!mounted) return;
      setState(() => _online = _hasConnection(results));
    });
  }

  Future<void> _refreshConnectivity() async {
    try {
      final r = await _connectivity.checkConnectivity();
      if (mounted) setState(() => _online = _hasConnection(r));
    } catch (_) {
      if (mounted) setState(() => _online = true);
    }
  }

  static bool _hasConnection(List<ConnectivityResult> results) {
    return results.any((e) => e != ConnectivityResult.none);
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_online) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppTheme.warning.withValues(alpha: 0.18),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppTheme.warning.withValues(alpha: 0.5)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.wifi_off_rounded, size: 18, color: _iconWarning),
            const SizedBox(width: 8),
            Text(
              'Offline',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      );
    }

    final last = widget.lastSyncedAt;
    final rel = last != null ? _relative(last) : '—';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppTheme.success.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.success.withValues(alpha: 0.35)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.cloud_done_rounded, size: 18, color: _iconSuccess),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              last != null ? 'Updated $rel' : 'Synced',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  String _relative(DateTime t) {
    final now = DateTime.now();
    final diff = now.difference(t);
    if (diff.inMinutes < 1) return 'just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
    if (diff.inHours < 24) return '${diff.inHours} hr ago';
    return DateFormat.MMMd().format(t);
  }
}
