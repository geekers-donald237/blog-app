import 'package:blog_app/core/theme/app_color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class AppTheme {
  static _border([Color color = AppColorsPalette.borderColor]) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3.dp,
    ),
    borderRadius: BorderRadius.circular(10.dp),
  );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColorsPalette.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColorsPalette.backgroundColor,
    ),
    chipTheme: const ChipThemeData(
      color: MaterialStatePropertyAll(
        AppColorsPalette.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding:  EdgeInsets.all(27.dp),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppColorsPalette.gradient2),
      errorBorder: _border(AppColorsPalette.errorColor),
    ),
  );
}