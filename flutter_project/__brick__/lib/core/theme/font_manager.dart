// ignore_for_file: dead_code, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:{{name.snakeCase()}}/core/constants/colors.dart';

class FontFamilyManager {
  static String cairo = 'Cairo';
  static String inter = 'Inter';
}

class FontWeightManager {
  static FontWeight get light => FontWeight.w300;
  static FontWeight get regular => FontWeight.w400;
  static FontWeight get medium => FontWeight.w500;
  static FontWeight get semiBold => FontWeight.w600;
  static FontWeight get bold => FontWeight.w700;
}

class FontSizeManager {
  static double get s12 => 12.0.sp;
  static double get s14 => 14.0.sp;
  static double get s16 => 16.0.sp;
  static double get s20 => 20.0.sp;
  static double get s24 => 24.0.sp;
}

class StyleManager {
  static TextStyle _getStyle(double fontSize, FontWeight fontWeight) {
    final isEnglish =
        true; // Replace with your logic to determine the current language
    return TextStyle(
      fontFamily: isEnglish ? FontFamilyManager.inter : FontFamilyManager.cairo,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: kBlack,
    );
  }

  static TextStyle getLightStyle(double fontSize) {
    return _getStyle(fontSize, FontWeightManager.light);
  }

  static TextStyle getRegularStyle(double fontSize) {
    return _getStyle(fontSize, FontWeightManager.regular);
  }

  static TextStyle getMediumStyle(double fontSize) {
    return _getStyle(fontSize, FontWeightManager.medium);
  }

  static TextStyle getSemiBoldStyle(double fontSize) {
    return _getStyle(fontSize, FontWeightManager.semiBold);
  }

  static TextStyle getBoldStyle(double fontSize) {
    return _getStyle(fontSize, FontWeightManager.bold);
  }
}
