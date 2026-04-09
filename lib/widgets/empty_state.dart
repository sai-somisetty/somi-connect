import 'package:flutter/material.dart';

import '../config/theme.dart';
import 'somi_button.dart';
import 'tenglish_text.dart';

/// Centered illustration + message + optional action — never feels like a dead end.
class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.icon,
    required this.message,
    this.messageTelugu = true,
    this.actionLabel,
    this.onAction,
  });

  final IconData icon;
  final String message;
  final bool messageTelugu;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.sectionGap, vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: AppTheme.navy.withValues(alpha: 0.08),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 56, color: AppTheme.navy.withValues(alpha: 0.75)),
          ),
          const SizedBox(height: AppTheme.sectionGap),
          if (messageTelugu)
            TenglishText(
              message,
              textAlign: TextAlign.center,
              style: AppTheme.teluguStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )
          else
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppTheme.textSecondary,
                    height: 1.45,
                  ),
            ),
          if (actionLabel != null && onAction != null) ...[
            const SizedBox(height: AppTheme.sectionGap),
            SomiButton(
              label: actionLabel!,
              onPressed: onAction,
              expand: false,
            ),
          ],
        ],
      ),
    );
  }
}
