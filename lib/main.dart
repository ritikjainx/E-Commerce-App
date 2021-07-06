import 'package:flutter/material.dart';
import 'package:needs_app/Routes.dart';
import 'package:needs_app/constants.dart';
import 'Screens/splash/splashScreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Needs',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: TextTheme(bodyText1: TextStyle(color: kTextColor), bodyText2: TextStyle(color: kTextColor)),
      ),
      initialRoute: SplashScreen.routename,
      routes: routes,
    );
  }
}
