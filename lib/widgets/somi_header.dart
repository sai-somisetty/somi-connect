import 'package:flutter/material.dart';

import '../config/theme.dart';

/// Section title with optional trailing action (e.g. "See all").
class SomiHeader extends StatelessWidget {
  const SomiHeader({
    super.key,
    required this.title,
    this.actionLabel,
    this.onAction,
    this.titleTelugu = false,
  });

  final String title;
  final String? actionLabel;
  final VoidCallback? onAction;

  /// When true, title uses Noto Sans Telugu styling from theme.
  final bool titleTelugu;

  @override
  Widget build(BuildContext context) {
    final titleStyle = titleTelugu
        ? AppTheme.teluguStyle(fontSize: 20, fontWeight: FontWeight.w700)
        : Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(title, style: titleStyle),
          ),
          if (actionLabel != null && onAction != null)
            TextButton(
              onPressed: onAction,
              style: TextButton.styleFrom(
                foregroundColor: AppTheme.orange,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                minimumSize: const Size(48, AppTheme.minTapTarget),
              ),
              child: Text(
                actionLabel!,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppTheme.orange,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}
