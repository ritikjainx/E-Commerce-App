import 'package:flutter/material.dart';
import 'package:needs_app/components/body.dart';
import 'package:needs_app/sizeConfig.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
