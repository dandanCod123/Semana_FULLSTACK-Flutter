import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

ThemeData get LightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    appBarTheme: AppBarTheme(
        centerTitle: true, backgroundColor: _lightColorScheme.primaryContainer),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightColorScheme.primary,
      foregroundColor: Colors.white,
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(
            fontSize: 9,
          );
        }
        return const TextStyle(
          fontSize: 12,
        );
      }),
    )));

ThemeData get DarkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _lightColorScheme.tertiary,
      ),
      segmentedButtonTheme: _segmentedButtonTheme,
    );

SegmentedButtonThemeData get _segmentedButtonTheme =>
    SegmentedButtonThemeData(style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(MaterialState.selected)) {
          return const TextStyle(
            fontSize: 9,
          );
        }
        return const TextStyle(
          fontSize: 12,
        );
      }),
    ));
