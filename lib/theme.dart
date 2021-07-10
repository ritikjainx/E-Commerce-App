import 'package:flutter/material.dart';
import 'constants.dart';

ThemeData themeData() {
  var textTheme = TextTheme(bodyText1: TextStyle(color: kTextColor), bodyText2: TextStyle(color: kTextColor));

  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
    appBarTheme: appBarTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    textTheme: textTheme,
  );
}

AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  elevation: 0,
  iconTheme: IconThemeData(color: Colors.black),
  textTheme: TextTheme(headline6: TextStyle(color: Color(0xff8d8d8d), fontSize: 18)),
  brightness: Brightness.light,
);

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30), gapPadding: 10, borderSide: BorderSide(color: kTextColor));
  return InputDecorationTheme(
      labelStyle: TextStyle(color: kTextColor),
      contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}
