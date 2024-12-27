import 'package:flutter/material.dart';

import 'app_text_theme.dart';

class AppTheme {
  static ThemeData buildLightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      textTheme: AppTextTheme.buildResponsiveTextTheme(context),
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
        errorStyle: AppTextTheme.buildResponsiveTextTheme(context)
            .labelMedium
            ?.copyWith(
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
        hintStyle: AppTextTheme.buildResponsiveTextTheme(context)
            .labelMedium
            ?.copyWith(color: Color(0xffB2BCC9)),
        labelStyle: AppTextTheme.buildResponsiveTextTheme(context)
            .labelLarge
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
  }

  static ThemeData buildDarkTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xff232528),
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      brightness: Brightness.dark,
      useMaterial3: true,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Color(0xff2E6FF3),
        selectionColor: Color(0xff2E6FF3),
        selectionHandleColor: Color(0xff7D8A95),
      ),
      textTheme: AppTextTheme.buildResponsiveDarkTextTheme(context),
      scaffoldBackgroundColor: Color(0xff232528),
      inputDecorationTheme: InputDecorationTheme(
        errorMaxLines: 2,
        errorStyle: AppTextTheme.buildResponsiveDarkTextTheme(context)
            .bodySmall
            ?.copyWith(
              color: Color(0xffE86666),
            ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Color(0xffE86666),
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Color(0xffE86666),
            width: 1,
          ),
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
        hintStyle: AppTextTheme.buildResponsiveDarkTextTheme(context)
            .labelMedium
            ?.copyWith(
              color: Color(0xff7D8A95),
            ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: AppTextTheme.buildResponsiveDarkTextTheme(context)
            .labelMedium
            ?.copyWith(
              color: Color(0xffF1F4F6),
            ),
        suffixIconColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.error)) {
            return Color(0xffE86666);
          }
          return Color(0xff7D8A95);
        }),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.disabled)) {
                return null;
              }
              return const Color(0xff2E6FF3);
            },
          ),
          minimumSize: WidgetStatePropertyAll<Size>(
            Size(
              double.infinity,
              56,
            ),
          ),
        ),
      ),
    );
  }
}
