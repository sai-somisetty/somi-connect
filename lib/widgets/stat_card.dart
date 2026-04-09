import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/theme.dart';

/// Big metric (Poppins 36–48) + label — study time, counts, scores.
class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.value,
    required this.label,
    this.valueColor,
    this.labelTelugu = false,
  });

  final String value;
  final String label;
  final Color? valueColor;
  final bool labelTelugu;

  @override
  Widget build(BuildContext context) {
    final valueStyle = GoogleFonts.poppins(
      fontSize: 40,
      fontWeight: FontWeight.w800,
      height: 1.05,
      color: valueColor ?? AppTheme.navy,
    );

    final labelStyle = labelTelugu
        ? AppTheme.teluguStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppTheme.textSecondary,
          )
        : Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppTheme.textSecondary,
              fontWeight: FontWeight.w500,
            );

    return SomiStatCardShell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(value, style: valueStyle, textAlign: TextAlign.center),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: labelStyle,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

/// Inner shell with padding (used when not in a Row of Expanded).
class SomiStatCardShell extends StatelessWidget {
  const SomiStatCardShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: AppTheme.cardSurface,
        borderRadius: BorderRadius.circular(AppTheme.cardRadius),
        boxShadow: AppTheme.cardShadow,
      ),
      child: child,
    );
  }
}
