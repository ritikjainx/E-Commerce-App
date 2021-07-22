import 'package:flutter/material.dart';
import 'package:needs_app/Menustate.dart';
import 'package:needs_app/sizeConfig.dart';
import '../../components/BottomnavBar.dart';
import 'Body.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        selected: MenuState.profile,
      ),
    );
  }
}
