import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: AppColors.lightColorScheme,
      brightness: Brightness.light,
      useMaterial3: true,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: AppColors.darkColorScheme,
      brightness: Brightness.dark,
      useMaterial3: true,
    );
  }
}
