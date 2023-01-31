import 'package:flutter/material.dart';
import 'package:new_wewo/app/common/util/extensions.dart';

import '../app_colors.dart';
import 'app_text_style.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get theme {
    final inputBorder = 20.outlineInputBorder(
      borderSide: 3.borderSide(),
    );

    final hintStyle = AppTextStyle.semiBoldStyle.copyWith(
      color: Colors.black,
      fontSize: 18,
    );

    return ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Quicksand",
        appBarTheme: const AppBarTheme(
          color: AppColors.kPrimaryColor,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.kPrimaryColor,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: 10.borderRadius,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith(
              (_) => EdgeInsets.zero,
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white.withOpacity(.14);
                }

                return null;
              },
            ),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (_) => AppTextStyle.buttonTextStyle,
            ),
            shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
              (states) => RoundedRectangleBorder(
                borderRadius: 10.borderRadius,
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {}
                return null;
              },
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith(
              (_) => EdgeInsets.zero,
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.white.withOpacity(.14);
                }

                return null;
              },
            ),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (_) => AppTextStyle.buttonTextStyle,
            ),
            shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
              (states) => RoundedRectangleBorder(
                borderRadius: 10.borderRadius,
              ),
            ),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 4,
          backgroundColor: AppColors.kPrimaryColor,
        ),
        textTheme: const TextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 3,
          ),
          enabledBorder: inputBorder,
          disabledBorder: inputBorder,
          focusedBorder: inputBorder,
          border: inputBorder,
        ),
        cardTheme: CardTheme(
          color: Colors.white.withOpacity(0.85),
          shape: RoundedRectangleBorder(
            borderRadius: 10.borderRadius,
          ),
        ),
        dialogTheme: DialogTheme(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: 10.borderRadius,
          ),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color.fromARGB(255, 202, 157, 160),
            primarySwatch: Colors.red,
            primaryColorDark: Colors.red));
  }
}
