import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// SOMI Connect — warm, trustworthy palette for Indian parents (35–55).
abstract final class AppTheme {
  // —— Brand colors ——
  static const Color navy = Color(0xFF1A365D);
  static const Color orange = Color(0xFFED8936);
  static const Color success = Color(0xFF38A169);
  static const Color warning = Color(0xFFD69E2E);
  static const Color danger = Color(0xFFE53E3E);

  static const Color background = Color(0xFFF7F8FA);
  static const Color cardSurface = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF1A202C);
  static const Color textSecondary = Color(0xFF718096);

  /// Legacy aliases (prefer names above in new code)
  static const Color primaryDeepBlue = navy;
  static const Color primaryDark = Color(0xFF153E75);
  static const Color accentWarmOrange = orange;
  static const Color accentOrangeLight = Color(0xFFF6AD55);
  static const Color surfaceLight = background;
  static const Color errorRed = danger;

  // —— Layout ——
  static const double cardPadding = 20;
  static const double cardRadius = 16;
  static const double sectionGap = 24;
  static const double minTapTarget = 52;

  static const List<BoxShadow> cardShadow = [
    BoxShadow(
      color: Color(0x1F000000),
      blurRadius: 12,
      offset: Offset(0, 4),
    ),
  ];

  static ThemeData light() {
    final colorScheme = ColorScheme.light(
      primary: navy,
      onPrimary: Colors.white,
      secondary: orange,
      onSecondary: Colors.white,
      surface: cardSurface,
      onSurface: textPrimary,
      error: danger,
      onError: Colors.white,
      outline: textSecondary.withValues(alpha: 0.35),
      surfaceContainerHighest: background,
    );

    final baseText = ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: background,
    ).textTheme;

    final poppins = GoogleFonts.poppinsTextTheme(baseText).apply(
      bodyColor: textPrimary,
      displayColor: textPrimary,
    );

    final textTheme = poppins.copyWith(
      bodyLarge: GoogleFonts.poppins(
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w400,
        color: textPrimary,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 16,
        height: 1.45,
        color: textPrimary,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 14,
        height: 1.4,
        color: textSecondary,
      ),
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        height: 1.25,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 18,
        height: 1.3,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 16,
        height: 1.35,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 24,
        height: 1.2,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      headlineSmall: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: navy,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 44,
        fontWeight: FontWeight.w800,
        color: navy,
      ),
      labelLarge: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: background,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 1,
        centerTitle: true,
        backgroundColor: navy,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      cardTheme: CardThemeData(
        color: cardSurface,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        margin: EdgeInsets.zero,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(double.infinity, minTapTarget),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          backgroundColor: orange,
          foregroundColor: Colors.white,
          disabledBackgroundColor: textSecondary.withValues(alpha: 0.35),
          textStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, minTapTarget),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          foregroundColor: navy,
          side: const BorderSide(color: navy, width: 1.5),
          textStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(120, minTapTarget),
          textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cardSurface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: textSecondary.withValues(alpha: 0.35)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: textSecondary.withValues(alpha: 0.35)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: navy, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: danger),
        ),
        labelStyle: GoogleFonts.poppins(color: textSecondary, fontSize: 15),
        floatingLabelStyle: GoogleFonts.poppins(color: navy, fontWeight: FontWeight.w500),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: orange,
        foregroundColor: Colors.white,
        extendedSizeConstraints: BoxConstraints(minHeight: minTapTarget),
        elevation: 2,
      ),
      navigationBarTheme: NavigationBarThemeData(
        height: 72,
        backgroundColor: cardSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 8,
        shadowColor: Colors.black26,
        indicatorColor: orange.withValues(alpha: 0.2),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
            color: selected ? orange : textSecondary,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return IconThemeData(
            size: 26,
            color: selected ? orange : textSecondary,
          );
        }),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: background,
        selectedColor: orange.withValues(alpha: 0.2),
        labelStyle: GoogleFonts.poppins(fontSize: 14, color: textPrimary),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      dividerTheme: DividerThemeData(
        color: textSecondary.withValues(alpha: 0.2),
        thickness: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentTextStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
      ),
      dialogTheme: DialogThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(cardRadius)),
        backgroundColor: cardSurface,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
      ),
    );
  }

  /// Extra-large metric numbers (scores, streaks, timers).
  static TextStyle dataNumberStyle(BuildContext context, {Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 42,
      fontWeight: FontWeight.w800,
      height: 1.05,
      color: color ?? navy,
    );
  }

  static TextStyle teluguStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500,
    Color? color,
  }) {
    return GoogleFonts.notoSansTelugu(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 1.45,
      color: color ?? textPrimary,
    );
  }
}
