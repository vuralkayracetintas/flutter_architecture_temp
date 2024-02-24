import 'package:flutter/material.dart';
import 'package:flutter_architecture/product/init/theme/custom_color_scheme.dart';
import 'package:flutter_architecture/product/init/theme/custom_theme.dart';

/// Custom Dark theme
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
