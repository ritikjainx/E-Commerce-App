import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFFFF7643);
const Color kPrimaryLightColor = Color(0xFFFFECDF);
const Color kTextColor = Color(0xFF757575);
const Color kSecondryColor = Color(0xFF979797);
const kanimationDuration = Duration(milliseconds: 200);

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFa53e), Color(0xff757575)],
);

final RegExp kemailValidatorRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-z]+');
const String kemailNullEroor = 'please enter Your Email';
const String kinvalidEmailEroor = 'Email Id is invalid';
const String kpassNullEroor = 'Please enter your password';
const String kshortPassEroor = 'password is too short,use min 8 characters';
const String kmatchPassEroor = 'password doesn\'t match';
