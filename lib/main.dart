import 'package:flutter/material.dart';
import 'package:islami_c8_sat/ui/chapter_details/chapter_details_screen.dart';
import 'package:islami_c8_sat/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_c8_sat/ui/home/home.dart';
import 'package:islami_c8_sat/ui/my_theme.dart';
import 'package:islami_c8_sat/ui/splash/splash.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.dark,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) =>
            ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen(),
      },
    );
  }
}
