import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();
  // Primary Colors
  static const primary = Color(0XFF40BFFF);
  static const primaryRed = Color(0XFFFB7181);
  static const primaryYellow = Color(0XFFFFC833);
  static const primaryGreen = Color(0XFF53D1B6);
  static const primaryPurple = Color(0XFF5C61F4);

  // Neutral Colors
  static const neutralDark = Color(0XFF223263);
  static const neutralGrey = Color(0XFF9098B1);
  static const neutralLight = Color(0XFFEBF0FF);

  // Background
  static const background = Color(0XFFFFFFFF);

  // Colors
  static const white = Color(0xFFFFFFFF);


  static const colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: white,
    primaryContainer: Color(0xFFC6E7FF),
    onPrimaryContainer: Color(0xFF001E2D),
    secondary: Color(0xFFEBF0FF),
    onSecondary: Color(0xFF223263),
    secondaryContainer: Color(0xFFD9E2FF),
    onSecondaryContainer: Color(0xFF001945),
    tertiary: Color(0xFF265EA7),
    onTertiary: white,
    tertiaryContainer: Color(0xFFD6E3FF),
    onTertiaryContainer: Color(0xFF001B3D),
    error: primaryRed,
    errorContainer: Color(0xFFFFDAD6),
    onError: white,
    onErrorContainer: Color(0xFF410002),
    background: background,
    onBackground: neutralDark,
    surface: background,
    onSurface: neutralDark,
    surfaceVariant: Color(0xFFDDE3EA),
    onSurfaceVariant: Color(0xFF41484D),
    outline: neutralLight,
    onInverseSurface: Color(0xFFD6F6FF),
    inverseSurface: Color(0xFF00363F),
    inversePrimary: Color(0xFF82CFFF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF00658D),
    outlineVariant: Color(0xFFC1C7CE),
    scrim: Color(0xFF000000),
  );
}




