import 'package:flutter/material.dart';

import '../config/theme.dart';

/// Premium card: white surface, soft shadow, optional colored left accent.
class SomiCard extends StatelessWidget {
  const SomiCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppTheme.cardPadding),
    this.leftBorderColor,
    this.onTap,
    this.margin,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color? leftBorderColor;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(AppTheme.cardRadius);

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: radius,
          boxShadow: AppTheme.cardShadow,
          color: AppTheme.cardSurface,
        ),
        child: ClipRRect(
          borderRadius: radius,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: padding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (leftBorderColor != null) ...[
                      Container(
                        width: 4,
                        margin: const EdgeInsets.only(right: 16, top: 4, bottom: 4),
                        decoration: BoxDecoration(
                          color: leftBorderColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
