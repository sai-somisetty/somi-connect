import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/theme.dart';

/// Circular progress with percentage in the center.
class ProgressRing extends StatelessWidget {
  const ProgressRing({
    super.key,
    required this.percent,
    this.size = 120,
    this.strokeWidth = 10,
    this.trackColor,
    this.progressColor,
    this.centerLabel,
  });

  /// 0–100
  final double percent;
  final double size;
  final double strokeWidth;
  final Color? trackColor;
  final Color? progressColor;
  final String? centerLabel;

  @override
  Widget build(BuildContext context) {
    final clamped = percent.clamp(0, 100);
    final track = trackColor ?? AppTheme.textSecondary.withValues(alpha: 0.15);
    final progress = progressColor ?? AppTheme.orange;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(size, size),
            painter: _RingPainter(
              progress: clamped / 100,
              strokeWidth: strokeWidth,
              trackColor: track,
              progressColor: progress,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${clamped.round()}%',
                style: GoogleFonts.poppins(
                  fontSize: size * 0.22,
                  fontWeight: FontWeight.w800,
                  color: AppTheme.navy,
                  height: 1,
                ),
              ),
              if (centerLabel != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    centerLabel!,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter({
    required this.progress,
    required this.strokeWidth,
    required this.trackColor,
    required this.progressColor,
  });

  final double progress;
  final double strokeWidth;
  final Color trackColor;
  final Color progressColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.shortestSide - strokeWidth) / 2;

    final trackPaint = Paint()
      ..color = trackColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, trackPaint);

    const start = -math.pi / 2;
    final sweep = 2 * math.pi * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      start,
      sweep,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _RingPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.trackColor != trackColor ||
        oldDelegate.progressColor != progressColor;
  }
}
