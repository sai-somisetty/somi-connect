import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// SOMI Connect — warm editorial palette for Indian parents (35–55, Tier 2/3).
abstract final class AppTheme {
  // ── SOMI core palette ──────────────────────────────────────────────────────
  static const Color navy     = Color(0xFF071739);
  static const Color navy2    = Color(0xFF0B2150);
  static const Color steel    = Color(0xFF4B6382);
  static const Color silver   = Color(0xFFA4B5C4);
  static const Color sand     = Color(0xFFA68868);
  static const Color gold     = Color(0xFFE3C39D);
  static const Color goldDeep = Color(0xFFC9A579);
  static const Color bgWarm   = Color(0xFFF2EADB);
  static const Color paper    = Color(0xFFFCFAF5);
  static const Color ink      = Color(0xFF1A1208);

  // ── Semantic colors ────────────────────────────────────────────────────────
  static const Color success       = Color(0xFF38A169);
  static const Color warning       = Color(0xFFD69E2E);
  static const Color danger        = Color(0xFFE53E3E);
  /// College log cards (left accent).
  static const Color collegePurple = Color(0xFF7C3AED);

  // ── Alarm / editorial palette ──────────────────────────────────────────────
  static const Color alarmRed         = Color(0xFFB43A3A);
  static const Color alarmRedBg       = Color(0x14B43A3A); // 8% opacity
  static const Color classroomAmberBg = Color(0x0FD97706); // 6% opacity
  static const Color okGreenDot       = Color(0xFF059669);
  static const Color warnAmberDot     = Color(0xFFD97706);
  /// Very light green tint — subject tile background when on track.
  static const Color okGreenTint      = Color(0xFFF0FDF4);

  // ── Warning severity palette (status board rows) ───────────────────────────
  static const Color warnDay1Bg     = Color(0xFFFEF3C7);
  static const Color warnDay1Border = Color(0xFFFDE68A);
  static const Color warnDay1Text   = Color(0xFF92400E);
  static const Color warnDay2Bg     = Color(0xFFFDE68A);
  static const Color warnDay2Border = Color(0xFFF59E0B);
  static const Color warnDay2Text   = Color(0xFF78350F);
  static const Color warnDay3Bg     = Color(0xFFFCD34D);
  static const Color warnDay3Border = Color(0xFFD97706);
  static const Color warnDay3Text   = Color(0xFF7C2D12);
  static const Color warnRedBg      = Color(0xFFFEE2E2);
  static const Color warnRedBorder  = Color(0xFFDC2626);
  static const Color warnRedText    = Color(0xFF991B1B);
  static const Color okGreenBg      = Color(0xFFD1FAE5);
  static const Color okGreenBorder  = Color(0xFF059669);
  static const Color okGreenText    = Color(0xFF065F46);

  /// Returns the correct color for a given [daysBehind] severity level.
  /// Exactly one of [isBorder], [isBg], [isText] should be true.
  static Color getSeverityColor(
    int daysBehind, {
    required bool isBorder,
    required bool isBg,
    required bool isText,
  }) {
    if (daysBehind <= 0) {
      return isBorder ? okGreenBorder : (isBg ? okGreenBg : okGreenText);
    }
    if (daysBehind == 1) {
      return isBorder ? warnDay1Border : (isBg ? warnDay1Bg : warnDay1Text);
    }
    if (daysBehind == 2) {
      return isBorder ? warnDay2Border : (isBg ? warnDay2Bg : warnDay2Text);
    }
    if (daysBehind == 3) {
      return isBorder ? warnDay3Border : (isBg ? warnDay3Bg : warnDay3Text);
    }
    return isBorder ? warnRedBorder : (isBg ? warnRedBg : warnRedText);
  }

  // ── Backward-compat aliases (deprecated) ──────────────────────────────────
  /// @deprecated Use [sand] instead.
  static const Color orange = sand;
  /// @deprecated Use [paper] instead.
  static const Color background = paper;
  static const Color cardSurface = Color(0xFFFFFFFF);
  /// @deprecated Use [ink] instead.
  static const Color textPrimary = ink;
  /// @deprecated Use [steel] instead.
  static const Color textSecondary = steel;
  static const Color primaryDeepBlue   = navy;
  static const Color primaryDark       = navy2;
  static const Color accentWarmOrange  = sand;
  static const Color accentOrangeLight = gold;
  static const Color surfaceLight      = paper;
  static const Color errorRed          = danger;

  // ── Layout constants ───────────────────────────────────────────────────────
  static const double cardPadding  = 20;
  static const double cardRadius   = 16;
  static const double sectionGap   = 20;
  static const double minTapTarget = 52;

  static const List<BoxShadow> cardShadow = [
    BoxShadow(
      color: Color(0x0F000000),
      blurRadius: 16,
      offset: Offset(0, 4),
    ),
  ];

  // ── Theme ──────────────────────────────────────────────────────────────────
  static ThemeData light() {
    final colorScheme = ColorScheme.light(
      primary: navy,
      onPrimary: gold,
      secondary: sand,
      onSecondary: navy,
      surface: cardSurface,
      onSurface: ink,
      error: danger,
      onError: Colors.white,
      outline: steel.withValues(alpha: 0.3),
      surfaceContainerHighest: paper,
    );

    final base = ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: paper,
    ).textTheme;

    final textTheme = GoogleFonts.dmSansTextTheme(base)
        .apply(bodyColor: ink, displayColor: navy)
        .copyWith(
          bodyLarge: GoogleFonts.dmSans(
              fontSize: 16, height: 1.55, color: ink),
          bodyMedium: GoogleFonts.dmSans(
              fontSize: 15, height: 1.5, color: ink),
          bodySmall: GoogleFonts.dmSans(
              fontSize: 13, height: 1.4, color: steel),
          titleLarge: GoogleFonts.dmSerifDisplay(
              fontSize: 22, height: 1.2, color: navy),
          titleMedium: GoogleFonts.dmSans(
              fontSize: 17, height: 1.3,
              fontWeight: FontWeight.w600, color: ink),
          titleSmall: GoogleFonts.dmSans(
              fontSize: 15, height: 1.35,
              fontWeight: FontWeight.w600, color: ink),
          headlineMedium: GoogleFonts.dmSerifDisplay(
              fontSize: 28, height: 1.15, color: navy),
          headlineSmall: GoogleFonts.dmSerifDisplay(
              fontSize: 24, height: 1.2, color: navy),
          displaySmall: GoogleFonts.dmSerifDisplay(
              fontSize: 36, color: navy),
          displayMedium: GoogleFonts.dmSerifDisplay(
              fontSize: 48, color: navy),
          labelLarge: GoogleFonts.dmSans(
              fontSize: 14, fontWeight: FontWeight.w600, color: ink),
          labelMedium: GoogleFonts.dmSans(
              fontSize: 12, fontWeight: FontWeight.w500, color: steel),
        );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: paper,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 1,
        centerTitle: true,
        backgroundColor: navy,
        foregroundColor: gold,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.dmSerifDisplay(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: gold,
        ),
        iconTheme: const IconThemeData(color: gold),
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
          backgroundColor: gold,
          foregroundColor: navy,
          disabledBackgroundColor: steel.withValues(alpha: 0.25),
          textStyle:
              GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, minTapTarget),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          foregroundColor: navy,
          side: const BorderSide(color: navy, width: 1.5),
          textStyle:
              GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(120, minTapTarget),
          textStyle:
              GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cardSurface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: steel.withValues(alpha: 0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: steel.withValues(alpha: 0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: navy, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: danger),
        ),
        labelStyle: GoogleFonts.dmSans(color: steel, fontSize: 15),
        floatingLabelStyle:
            GoogleFonts.dmSans(color: navy, fontWeight: FontWeight.w500),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: gold,
        foregroundColor: navy,
        extendedSizeConstraints: BoxConstraints(minHeight: minTapTarget),
        elevation: 2,
      ),
      navigationBarTheme: NavigationBarThemeData(
        height: 64,
        backgroundColor: cardSurface,
        surfaceTintColor: Colors.transparent,
        elevation: 8,
        shadowColor: Colors.black12,
        indicatorColor: navy.withValues(alpha: 0.10),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final sel = states.contains(WidgetState.selected);
          return GoogleFonts.dmSans(
            fontSize: 12,
            fontWeight: sel ? FontWeight.w700 : FontWeight.w500,
            color: sel ? sand : steel,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final sel = states.contains(WidgetState.selected);
          return IconThemeData(size: 24, color: sel ? sand : steel);
        }),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: paper,
        selectedColor: sand.withValues(alpha: 0.2),
        labelStyle: GoogleFonts.dmSans(fontSize: 13, color: ink),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      dividerTheme: DividerThemeData(
        color: steel.withValues(alpha: 0.15),
        thickness: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentTextStyle:
            GoogleFonts.dmSans(color: Colors.white, fontSize: 15),
      ),
      dialogTheme: DialogThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cardRadius)),
        backgroundColor: cardSurface,
        titleTextStyle:
            GoogleFonts.dmSerifDisplay(fontSize: 22, color: navy),
      ),
    );
  }

  // ── Text style helpers ─────────────────────────────────────────────────────

  /// DM Serif Display — headings, metric numbers, greeting names.
  static TextStyle serifDisplay({
    double fontSize = 32,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) {
    return GoogleFonts.dmSerifDisplay(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 1.1,
      color: color ?? navy,
    );
  }

  /// Newsreader — editorial greetings, large numbers, featured tile headlines.
  static TextStyle newsreaderSerif({
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
  }) {
    return GoogleFonts.newsreader(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  /// @deprecated Use [serifDisplay] instead.
  static TextStyle dataNumberStyle(BuildContext context, {Color? color}) =>
      serifDisplay(fontSize: 42, color: color);

  static TextStyle teluguStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500,
    Color? color,
  }) {
    return GoogleFonts.notoSansTelugu(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 1.45,
      color: color ?? ink,
    );
  }
}
