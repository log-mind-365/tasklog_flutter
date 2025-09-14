import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: AppColors.lightColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightColorScheme.surfaceContainer,
      ),
      scaffoldBackgroundColor: AppColors.lightColorScheme.surfaceContainer,
      brightness: Brightness.light,
      fontFamily: 'Jost',
      useMaterial3: true,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: AppColors.darkColorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkColorScheme.surfaceContainer,
      ),
      scaffoldBackgroundColor: AppColors.lightColorScheme.surfaceContainer,
      brightness: Brightness.dark,
      fontFamily: 'Jost',
      useMaterial3: true,
    );
  }
}
