import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SophloTheme {
  // Core Color Palette - Raw Underground Travel
  static const Color black = Color(0xFF0A0A0A);
  static const Color deepBlack = Color(0xFF050505);
  static const Color neonGreen = Color(0xFF00FF87);
  static const Color neonYellow = Color(0xFFFFE500);
  static const Color neonOrange = Color(0xFFFF6B00);
  static const Color neonPink = Color(0xFFFF0080);
  static const Color neonBlue = Color(0xFF00C8FF);
  static const Color graffWhite = Color(0xFFF5F0E8);
  static const Color concreteGray = Color(0xFF2A2A2A);
  static const Color asphaltGray = Color(0xFF1A1A1A);
  static const Color rustRed = Color(0xFFE63946);

  // Language accent colors
  static const Map<String, Color> languageColors = {
    'Korean': Color(0xFF00C8FF),
    'Japanese': Color(0xFFFF0080),
    'Hindi': Color(0xFFFF6B00),
    'Spanish': Color(0xFFFFE500),
    'French': Color(0xFF4361EE),
    'German': Color(0xFFE63946),
    'English': Color(0xFF00FF87),
  };

  static const Map<String, String> languageFlags = {
    'Korean': '🇰🇷',
    'Japanese': '🇯🇵',
    'Hindi': '🇮🇳',
    'Spanish': '🇪🇸',
    'French': '🇫🇷',
    'German': '🇩🇪',
    'English': '🇬🇧',
  };

  static const Map<String, String> languageDestinations = {
    'Korean': 'Seoul',
    'Japanese': 'Tokyo',
    'Hindi': 'Mumbai',
    'Spanish': 'Barcelona',
    'French': 'Paris',
    'German': 'Berlin',
    'English': 'London',
  };

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: black,
      colorScheme: const ColorScheme.dark(
        primary: neonGreen,
        secondary: neonYellow,
        surface: asphaltGray,
        error: rustRed,
      ),
      textTheme: GoogleFonts.spaceGroteskTextTheme(
        ThemeData.dark().textTheme,
      ).copyWith(
        displayLarge: GoogleFonts.barlow(
          fontSize: 48,
          fontWeight: FontWeight.w900,
          color: graffWhite,
          letterSpacing: -2,
        ),
        displayMedium: GoogleFonts.barlow(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: graffWhite,
          letterSpacing: -1,
        ),
        headlineLarge: GoogleFonts.barlow(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: graffWhite,
        ),
        bodyLarge: GoogleFonts.spaceGrotesk(
          fontSize: 16,
          color: graffWhite,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.spaceGrotesk(
          fontSize: 14,
          color: Colors.white70,
        ),
        labelLarge: GoogleFonts.barlow(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
          color: graffWhite,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: black,
        elevation: 0,
        titleTextStyle: GoogleFonts.barlow(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: graffWhite,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
