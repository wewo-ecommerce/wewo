import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './dimem.dart';
import './type.dart';
import './color.dart';

class LafyuuTheme {
  static ThemeData themeData = ThemeData(
    useMaterial3: false,
    fontFamily: 'Poppins',
    primaryIconTheme: iconThemePrimary,
    primaryTextTheme: appTextTheme,
    primaryColor: AppColors.primary,
    colorScheme: AppColors.colorScheme,
    textTheme: appTextTheme,
    iconTheme: iconTheme,
    disabledColor: AppColors.neutralLight,
    cardColor: AppColors.white,
    dividerColor: AppColors.neutralLight,
    scaffoldBackgroundColor: AppColors.background,
    dividerTheme:
        const DividerThemeData(color: AppColors.neutralLight, thickness: 1),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      toolbarHeight: AppDimen.toolBarHeight,
      actionsIconTheme: iconTheme,
      shape: Border(bottom: borderSide),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: iconThemePrimary,
      unselectedIconTheme: iconTheme,
      selectedLabelStyle:
          appTextTheme.headlineSmall?.copyWith(color: AppColors.primary),
      unselectedLabelStyle:
          appTextTheme.headlineSmall?.copyWith(fontWeight: FontWeight.normal),
    ),
    inputDecorationTheme: InputDecorationTheme(
      iconColor: iconTheme.color,
      hintStyle: appTextTheme.bodySmall?.copyWith(color: AppColors.neutralGrey),
      errorStyle: appTextTheme.labelLarge?.copyWith(color: AppColors.primaryRed),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      outlineBorder: inputBorder.borderSide,
      border: inputBorder,
      enabledBorder: inputBorder,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll<double?>(0.0),
        padding: const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
        textStyle: MaterialStatePropertyAll<TextStyle?>(
            appTextTheme.labelMedium?.copyWith(color: AppColors.primary)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: buttonStyle.copyWith(
          textStyle: MaterialStatePropertyAll(appTextTheme.labelLarge)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: buttonStyle.copyWith(
        elevation: const MaterialStatePropertyAll(8),
        shadowColor:
            MaterialStatePropertyAll<Color>(AppColors.primary.withOpacity(0.8)),
      ),
    ),
    chipTheme: ChipThemeData(
      elevation: 0,
      padding: EdgeInsets.zero,
      disabledColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      selectedColor: AppColors.colorScheme.primary.withOpacity(0.1),
      labelPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
          side: borderSide, borderRadius: borderRadius),
      labelStyle:
          appTextTheme.labelSmall?.copyWith(color: AppColors.neutralDark),
    ),
    sliderTheme: const SliderThemeData(
      rangeThumbShape: RoundRangeSliderThumbShape(
        enabledThumbRadius: 10,
        elevation: 0,
      ),
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10, elevation: 0),
      inactiveTrackColor: AppColors.neutralLight,
      trackHeight: 4,
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: AppColors.primary,
      minLeadingWidth: 20,
      horizontalTitleGap: 20,
      selectedTileColor: AppColors.primary,
      textColor: AppColors.neutralDark
    ),
  );

  LafyuuTheme._();

  static const iconTheme = IconThemeData(color: AppColors.neutralGrey);
  static const iconThemePrimary = IconThemeData(color: AppColors.primary);

  static const borderRadius = BorderRadius.all(Radius.circular(5.0));
  static const borderSide = BorderSide(width: 1, color: AppColors.neutralLight);
  static const inputBorder = OutlineInputBorder(
    borderRadius: borderRadius,
    borderSide: borderSide,
  );
  static const buttonStyle = ButtonStyle(
    padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(16)),
    shape: MaterialStatePropertyAll<OutlinedBorder?>(
      RoundedRectangleBorder(borderRadius: borderRadius),
    ),
  );
}
