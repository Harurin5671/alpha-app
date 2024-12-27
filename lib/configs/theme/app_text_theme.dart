import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static double _getScaleFactor(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1200) {
      return 1.3;
    } else if (screenWidth > 800) {
      return 1.2;
    }
    return 1.0;
  }

  static TextTheme buildResponsiveTextTheme(BuildContext context) {
    double scaleFactor = _getScaleFactor(context);

    return TextTheme(
      bodyLarge: GoogleFonts.nunito(
        fontSize: 14 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      bodyMedium: GoogleFonts.nunito(
        fontSize: 12 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      bodySmall: GoogleFonts.nunito(
        fontSize: 10 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      headlineLarge: GoogleFonts.nunito(
        fontSize: 22 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      headlineMedium: GoogleFonts.nunito(
        fontSize: 18 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      headlineSmall: GoogleFonts.nunito(
        fontSize: 16 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      labelLarge: GoogleFonts.nunito(
        fontSize: 16 * scaleFactor,
        height: 1.5,
        color: const Color(0xffB2BCC9),
      ),
      labelMedium: GoogleFonts.nunito(
        fontSize: 14 * scaleFactor,
        height: 1.5,
        color: const Color(0xffB2BCC9),
      ),
      labelSmall: GoogleFonts.nunito(
        fontSize: 12 * scaleFactor,
        height: 1.5,
        color: const Color(0xffB2BCC9),
      ),
      titleLarge: GoogleFonts.nunito(
        fontSize: 22 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      titleMedium: GoogleFonts.nunito(
        fontSize: 18 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      titleSmall: GoogleFonts.nunito(
        fontSize: 16 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      displayLarge: GoogleFonts.nunito(
        fontSize: 40 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      displayMedium: GoogleFonts.nunito(
        fontSize: 34 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
      displaySmall: GoogleFonts.nunito(
        fontSize: 28 * scaleFactor,
        height: 1.5,
        color: const Color(0xff33384B),
      ),
    );
  }

  static TextTheme buildResponsiveDarkTextTheme(BuildContext context) {
    double scaleFactor = _getScaleFactor(context);

    return TextTheme(
      bodyLarge: GoogleFonts.nunito(
        fontSize: 14 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      bodyMedium: GoogleFonts.nunito(
        fontSize: 12 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      bodySmall: GoogleFonts.nunito(
        fontSize: 10 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      headlineLarge: GoogleFonts.nunito(
        fontSize: 22 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      headlineMedium: GoogleFonts.nunito(
        fontSize: 18 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      headlineSmall: GoogleFonts.nunito(
        fontSize: 16 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      labelLarge: GoogleFonts.nunito(
        fontSize: 16 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      labelMedium: GoogleFonts.nunito(
        fontSize: 14 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      labelSmall: GoogleFonts.nunito(
        fontSize: 12 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      titleLarge: GoogleFonts.nunito(
        fontSize: 22 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      titleMedium: GoogleFonts.nunito(
        fontSize: 18 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      titleSmall: GoogleFonts.nunito(
        fontSize: 16 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      displayLarge: GoogleFonts.nunito(
        fontSize: 40 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      displayMedium: GoogleFonts.nunito(
        fontSize: 34 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
      displaySmall: GoogleFonts.nunito(
        fontSize: 28 * scaleFactor,
        height: 1.5,
        color: const Color(0xffF1F4F6),
      ),
    );
  }
}
