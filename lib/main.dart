import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c8_sat/providers/settings_provider.dart';
import 'package:islami_c8_sat/ui/chapter_details/chapter_details_screen.dart';
import 'package:islami_c8_sat/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:islami_c8_sat/ui/home/home.dart';
import 'package:islami_c8_sat/ui/my_theme.dart';
import 'package:islami_c8_sat/ui/splash/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) {
        return SettingsProvider();
      },
      child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    // to get provider object
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: provider.theme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) =>
            ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen(),
      },
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale(
          'en',
        ),
        Locale(
          'ar',
        ),
      ],
      locale: Locale(provider.lang),
    );
  }
}
