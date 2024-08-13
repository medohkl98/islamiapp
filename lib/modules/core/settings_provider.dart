import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguageCode = "ar";
  ThemeMode currentThemeMode = ThemeMode.dark;

  void changeLanguageCode(String newLanguageCode) {
    if (currentLanguageCode == newLanguageCode) return;
    currentLanguageCode = newLanguageCode;

    notifyListeners();
  }

  String getHomeBackround() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/imgs/home_dark_background.png"
        : "assets/imgs/home_background.png";
  }

  bool isDarkMode() {
    return currentThemeMode == ThemeMode.dark;
  }

  void changeThemeMode(ThemeMode newThemeMode) {
    if (currentThemeMode == newThemeMode) return;
    currentThemeMode = newThemeMode;
    notifyListeners();
  }
}
