import 'package:flutter/material.dart';
import 'package:needs_app/Screens/splash/components/body.dart';
import 'package:needs_app/sizeConfig.dart';

class SplashScreen extends StatelessWidget {
  static const routname = 'splashscreen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
