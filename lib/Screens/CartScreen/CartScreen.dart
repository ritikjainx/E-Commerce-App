import 'package:flutter/material.dart';
import 'package:needs_app/sizeConfig.dart';

import '../../BottomnavBar.dart';
import '../../Menustate.dart';
import 'Body.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        selected: MenuState.cart,
      ),
      appBar: AppBar(
        title: Center(
          child: Text.rich(
              TextSpan(
                text: 'Your Cart',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: '\n 4 Items',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  )
                ],
              ),
              textAlign: TextAlign.center),
        ),
      ),
      body: Body(),
    );
  }
}
