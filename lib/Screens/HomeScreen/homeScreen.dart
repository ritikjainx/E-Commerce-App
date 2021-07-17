import 'package:flutter/material.dart';
import 'package:needs_app/sizeConfig.dart';

import 'Body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScrene';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
