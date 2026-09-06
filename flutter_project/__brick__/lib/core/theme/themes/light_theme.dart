import '../../constants/app_sizes.dart';
import '/core/constants/colors.dart';
import '/core/extensions/text_extensions.dart';
import '/core/theme/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: kPrimaryColor,
    primaryContainer: kGray,
  ),
  scaffoldBackgroundColor: scaffoldBaseColor,
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected) ? kPrimaryColor : null,
    ),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: kPrimaryColor,
    contentTextStyle: context.textTheme.bodyMedium!.copyWith(
      color: scaffoldBaseColor,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected) ? kWhite : null,
    ),
    fillColor: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected) ? kPrimaryColor : null,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadius.as4),
    ),
  ),
  drawerTheme: DrawerThemeData(backgroundColor: kWhite),
  appBarTheme: AppBarThemeData(
    elevation: .6,
    backgroundColor: kWhite,
    shadowColor: kBlack,
  ),
  textTheme: TextTheme(
    headlineLarge: StyleManager.getBoldStyle(FontSizeManager.s24, kBlack),
    titleLarge: StyleManager.getBoldStyle(FontSizeManager.s20, kBlack),
    bodyMedium: StyleManager.getSemiBoldStyle(FontSizeManager.s16, kBlack),
    bodySmall: StyleManager.getRegularStyle(FontSizeManager.s16, kBlack),
    displayLarge: StyleManager.getBoldStyle(FontSizeManager.s14, kBlack),
    displayMedium: StyleManager.getSemiBoldStyle(FontSizeManager.s14, kBlack),
    displaySmall: StyleManager.getRegularStyle(FontSizeManager.s14, kBlack),
    labelLarge: StyleManager.getBoldStyle(FontSizeManager.s12, kBlack),
    labelSmall: StyleManager.getRegularStyle(FontSizeManager.s12, kBlack),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    iconSize: 32.w,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadius.as14),
    ),
    backgroundColor: scaffoldBaseColor,
    foregroundColor: kPrimaryColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: kDarkGray,
    suffixIconColor: kDarkGray,
    hintStyle: StyleManager.getRegularStyle(FontSizeManager.s14, kDarkGray),
    fillColor: scaffoldBaseColor,
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
      foregroundColor: scaffoldBaseColor,
      textStyle: context.textTheme.bodyMedium!.copyWith(
        color: scaffoldBaseColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.as14),
      ),
    ),
  ),
);
