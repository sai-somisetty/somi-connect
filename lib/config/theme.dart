import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Deep blue primary, warm orange accent — large tap targets for caregivers.
abstract final class AppTheme {
  static const Color primaryDeepBlue = Color(0xFF0D47A1);
  static const Color primaryDark = Color(0xFF002171);
  static const Color accentWarmOrange = Color(0xFFE65100);
  static const Color accentOrangeLight = Color(0xFFFFB74D);
  static const Color surfaceLight = Color(0xFFF5F7FB);
  static const Color errorRed = Color(0xFFC62828);

  static const double minTapTarget = 48;

  static ThemeData light() {
    final base = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryDeepBlue,
        primary: primaryDeepBlue,
        secondary: accentWarmOrange,
        surface: surfaceLight,
        error: errorRed,
        brightness: Brightness.light,
      ),
    );

    final poppins = GoogleFonts.poppinsTextTheme(base.textTheme);
    final notoTelugu = GoogleFonts.notoSansTeluguTextTheme(poppins);

    return base.copyWith(
      textTheme: notoTelugu,
      primaryTextTheme: notoTelugu,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryDeepBlue,
        foregroundColor: Colors.white,
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, minTapTarget),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          backgroundColor: accentWarmOrange,
          foregroundColor: Colors.white,
          textStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, minTapTarget),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          foregroundColor: primaryDeepBlue,
          side: const BorderSide(color: primaryDeepBlue, width: 1.5),
          textStyle: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryDeepBlue, width: 2),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: accentWarmOrange,
        foregroundColor: Colors.white,
        extendedSizeConstraints: BoxConstraints(minHeight: minTapTarget),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: accentWarmOrange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
      chipTheme: base.chipTheme.copyWith(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );
  }
}
