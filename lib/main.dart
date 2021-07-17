import 'package:flutter/material.dart';
import 'package:needs_app/Routes.dart';
import 'package:needs_app/Screens/HomeScreen/homeScreen.dart';
import 'package:needs_app/theme.dart';
// import 'Screens/splash/splashScreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Needs',
      theme: themeData(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
