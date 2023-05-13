import 'package:flutter/material.dart';

class MyTheme {
  static const Color darkAccentColor = Color(0xFFFACC1D);
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static final ThemeData lightTheme = ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18)))),
      cardColor: Colors.white,
      textTheme: const TextTheme(
        headline5: TextStyle(fontSize: 25, color: Colors.black),
        headline6: TextStyle(fontSize: 20, color: Colors.black),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: lightPrimaryColor,
      ),
      primaryColor: lightPrimaryColor,
      accentColor: lightPrimaryColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightPrimaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Color(0xFF242424),
              fontSize: 32,
              fontWeight: FontWeight.w500),
          backgroundColor: Colors.transparent,
          elevation: 0));
  static final ThemeData darkTheme = ThemeData(
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: darkPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18)))),
      cardColor: darkPrimaryColor,
      textTheme: const TextTheme(
        headline5: TextStyle(fontSize: 25, color: Colors.white),
        headline6: TextStyle(fontSize: 20, color: Colors.white),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: darkAccentColor,
      ),
      primaryColor: darkPrimaryColor,
      accentColor: darkAccentColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkPrimaryColor,
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),
          backgroundColor: Colors.transparent,
          elevation: 0));
}
