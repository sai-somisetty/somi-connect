import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/theme.dart';

/// Telugu script with **Noto Sans Telugu** — use for Telugu labels, nudges, motivational copy.
class TenglishText extends StatelessWidget {
  const TenglishText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final base = GoogleFonts.notoSansTelugu(
      fontSize: 16,
      height: 1.45,
      color: AppTheme.textPrimary,
    );
    return Text(
      text,
      style: base.merge(style),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
