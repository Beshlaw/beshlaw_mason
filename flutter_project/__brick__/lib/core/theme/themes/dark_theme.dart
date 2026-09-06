import '../constants/app_sizes.dart';
import '/core/constants/colors.dart';
import '/core/extensions/text_extensions.dart';
import '/core/theme/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData darkTheme(BuildContext context) => ThemeData(
  brightness: Brightness.dark,

  colorScheme: ColorScheme.dark(
    primary: kPrimaryColor,
    primaryContainer: kDarkGray,
  ),

  scaffoldBackgroundColor: kDarkBackground,

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected) ? kPrimaryColor : kGray,
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: kPrimaryColor,
    contentTextStyle: context.textTheme.bodyMedium!.copyWith(color: kWhite),
  ),

  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected) ? kBlack : null,
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.selected) ? kPrimaryColor : kDarkGray,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadius.as4),
    ),
  ),

  drawerTheme: DrawerThemeData(backgroundColor: kDarkGray),

  appBarTheme: AppBarThemeData(
    elevation: .6,
    backgroundColor: kDarkGray,
    shadowColor: kBlack,
  ),

  textTheme: TextTheme(
    headlineLarge: StyleManager.getBoldStyle(FontSizeManager.s24, kWhite),
    titleLarge: StyleManager.getBoldStyle(FontSizeManager.s20, kWhite),
    bodyMedium: StyleManager.getSemiBoldStyle(FontSizeManager.s16, kWhite),
    bodySmall: StyleManager.getRegularStyle(FontSizeManager.s16, kWhite),
    displayLarge: StyleManager.getBoldStyle(FontSizeManager.s14, kWhite),
    displayMedium: StyleManager.getSemiBoldStyle(FontSizeManager.s14, kWhite),
    displaySmall: StyleManager.getRegularStyle(FontSizeManager.s14, kWhite),
    labelLarge: StyleManager.getBoldStyle(FontSizeManager.s12, kWhite),
    labelSmall: StyleManager.getRegularStyle(FontSizeManager.s12, kWhite),
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    iconSize: 32.w,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadius.as14),
    ),
    backgroundColor: kDarkGray,
    foregroundColor: kPrimaryColor,
  ),

  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: kGray,
    suffixIconColor: kGray,

    hintStyle: StyleManager.getRegularStyle(FontSizeManager.s14, kGray),

    fillColor: kDarkGray,
    filled: true,

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.as14),
      borderSide: BorderSide(color: kGray, width: 1),
    ),

    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.as14),
      borderSide: BorderSide(color: kGray, width: 1),
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.as14),
      borderSide: BorderSide(color: kPrimaryColor, width: 2),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.as14),
      borderSide: BorderSide(color: kError, width: 2),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 4,
      shadowColor: kPrimaryColor.withAlpha(175),
      backgroundColor: kPrimaryColor,
      minimumSize: Size(double.infinity, 56.h),
      foregroundColor: kWhite,
      textStyle: context.textTheme.bodyMedium!.copyWith(color: kWhite),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.as14),
      ),
    ),
  ),
);
