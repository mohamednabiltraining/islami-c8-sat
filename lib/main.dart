import 'package:flutter/material.dart';
import 'package:islami_c8_sat/ui/chapter_details/chapter_details_screen.dart';
import 'package:islami_c8_sat/ui/home/home.dart';
import 'package:islami_c8_sat/ui/splash/splash.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: Color(0xFFB7935F),
          ),
          primaryColor: Color(0xFFB7935F),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xFFB7935F),
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
              elevation: 0)),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) => ChapterDetailsScreen()
      },
    );
  }
}
