import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String lang = 'en';
  ThemeMode theme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    theme = newTheme;
    notifyListeners();
  }

  void changeLanguage(String newLang) {
    lang = newLang;
    notifyListeners();
  }

  bool isDarkEnabled() {
    return theme == ThemeMode.dark;
  }

  String getMainBackGround() {
    return isDarkEnabled()
        ? 'assets/images/dark_background_image.png'
        : 'assets/images/main_background.png';
  }
}
