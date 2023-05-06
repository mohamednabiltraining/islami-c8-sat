import 'package:flutter/material.dart';
import 'package:islami_c8_sat/ui/home/home.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
          'assets/images/splash_background.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
