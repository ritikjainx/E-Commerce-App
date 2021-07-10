import 'package:flutter/material.dart';
import 'package:needs_app/Screens/Forget_Screen/forgetscreen.dart';
import 'package:needs_app/Screens/LoginPage/loginPage.dart';
import 'package:needs_app/Screens/splash/splashScreens.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routename: (context) => SplashScreen(),
  LoginPage.routename: (context) => LoginPage(),
  ForgetScreen.routeName: (context) => ForgetScreen(),
};
