import 'package:flutter/material.dart';

const appFontFamily = 'font';

class AppTextStyle {
  const AppTextStyle._();

  static const letterSpacing = 0.5;
  static const mediumTextHeight = 1.5;
  static const largeTextHeight = 1.8;
}
const TextTheme appTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  displayMedium: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
  ),
  displaySmall: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
  ),
  headlineLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  headlineMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  headlineSmall: TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  titleMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  titleSmall: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  labelLarge: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  labelMedium: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 12,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  labelSmall: TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.mediumTextHeight,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.largeTextHeight,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.largeTextHeight,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    letterSpacing: AppTextStyle.letterSpacing,
    height: AppTextStyle.largeTextHeight,
  ),
);
