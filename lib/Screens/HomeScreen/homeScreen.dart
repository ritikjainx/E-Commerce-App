import 'package:flutter/material.dart';
import '../../components/BottomnavBar.dart';
import '../../Menustate.dart';
import 'Body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selected: MenuState.homepage,
      ),
      body: Body(),
    );
  }
}
