import 'package:flutter/material.dart';
import 'package:needs_app/Screens/CartScreen/CartScreen.dart';
import 'package:needs_app/Screens/DetailsScreen.dart/Detailscreen.dart';
import 'package:needs_app/Screens/Forget_Screen/forgetscreen.dart';
import 'package:needs_app/Screens/HomeScreen/homeScreen.dart';
import 'package:needs_app/Screens/LoginPage/loginPage.dart';
import 'package:needs_app/Screens/OTP_Screen/OTPScreen.dart';
import 'package:needs_app/Screens/SignUp_screen/signupscreen.dart';
import 'package:needs_app/Screens/profile/profile.dart';
import 'package:needs_app/Screens/splash/splashScreens.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routename: (context) => SplashScreen(),
  LoginPage.routename: (context) => LoginPage(),
  ForgetScreen.routeName: (context) => ForgetScreen(),
  SignUp.routeName: (context) => SignUp(),
  OTPscreen.routeName: (context) => OTPscreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  Profile.routeName: (context) => Profile(),
};
