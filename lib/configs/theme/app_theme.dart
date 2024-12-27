import 'package:flutter/material.dart';

import 'app_text_theme.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffffffff),
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xffffffff),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffF4F4F6),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffF4F4F6),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffF50036),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      errorStyle: AppTextTheme.lightTextTheme.labelMedium?.copyWith(
        color: Color(0xffF50036),
      ),
      filled: true,
      fillColor: Color(0xffFAFAFC),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff2E6FF3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: AppTextTheme.lightTextTheme.labelMedium
          ?.copyWith(color: Color(0xffB2BCC9)),
      labelStyle: AppTextTheme.lightTextTheme.labelLarge
          ?.copyWith(color: Color(0xff33384B)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          Color(0xff2E6FF3),
        ),
        minimumSize: WidgetStatePropertyAll<Size>(
          Size(double.infinity, 56),
        ),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff232528),
    ),
    brightness: Brightness.dark,
    useMaterial3: true,
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: Color(0xff232528),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: Color(0xff2E6FF3),
          width: 1,
        ),
      ),
      filled: true,
      fillColor: Color(0xff2B3037),
      hintStyle: AppTextTheme.darkTextTheme.labelMedium?.copyWith(
        color: Color(0xff7D8A95),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      floatingLabelStyle: AppTextTheme.darkTextTheme.labelMedium?.copyWith(
        color: Color(0xffF1F4F6),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(Color(0xff2E6FF3)),
        minimumSize: WidgetStatePropertyAll<Size>(Size(double.infinity, 56)),
      ),
    ),
  );
}
