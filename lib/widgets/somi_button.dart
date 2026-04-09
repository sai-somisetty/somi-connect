import 'package:flutter/material.dart';

import '../config/theme.dart';

enum SomiButtonVariant { primary, secondary }

/// Large tap targets (52px min) — primary orange, secondary outlined navy.
class SomiButton extends StatelessWidget {
  const SomiButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = SomiButtonVariant.primary,
    this.icon,
    this.expand = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final SomiButtonVariant variant;
  final IconData? icon;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          Icon(icon, size: 22),
          const SizedBox(width: 8),
        ],
        Text(label),
      ],
    );

    switch (variant) {
      case SomiButtonVariant.primary:
        return SizedBox(
          width: expand ? double.infinity : null,
          height: AppTheme.minTapTarget,
          child: ElevatedButton(
            onPressed: onPressed,
            child: child,
          ),
        );
      case SomiButtonVariant.secondary:
        return SizedBox(
          width: expand ? double.infinity : null,
          height: AppTheme.minTapTarget,
          child: OutlinedButton(
            onPressed: onPressed,
            child: child,
          ),
        );
    }
  }
}
