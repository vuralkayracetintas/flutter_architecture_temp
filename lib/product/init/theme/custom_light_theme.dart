import 'package:flutter/material.dart';
import 'package:flutter_architecture/product/init/theme/custom_color_scheme.dart';
import 'package:flutter_architecture/product/init/theme/custom_theme.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom Light Theme
final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  // @override
  // ThemeData get themeData => _themeData.copyWith(
  //       textTheme: GoogleFonts.aBeeZeeTextTheme(_themeData.textTheme),
  //     );

  @override
  // TODO: implement floatingActionButtonThemeData
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
