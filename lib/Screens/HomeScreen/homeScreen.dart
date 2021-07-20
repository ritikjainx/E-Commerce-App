import 'package:flutter/material.dart';
import 'package:needs_app/sizeConfig.dart';

import '../../BottomnavBar.dart';
import '../../Menustate.dart';
import 'Body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScrene';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selected: MenuState.homepage,
      ),
      body: Body(),
    );
  }
}
