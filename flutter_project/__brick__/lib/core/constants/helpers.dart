import 'package:flutter/material.dart';
import '../utils/app_shared_preferences.dart';

class ThemeController {
  static ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
    AppPreferences.isDarkMode() ? ThemeMode.dark : ThemeMode.light,
  );
  static Future<void> toggleTheme() async {
    if (themeNotifier.value.isDark) {
      await AppPreferences.setData('isDarkMode', false);
    } else {
      await AppPreferences.setData('isDarkMode', true);
    }
    themeNotifier.value = themeNotifier.value.isLight
        ? ThemeMode.dark
        : ThemeMode.light;
  }
}
