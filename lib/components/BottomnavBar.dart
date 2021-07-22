import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:needs_app/Screens/CartScreen/CartScreen.dart';
import 'package:needs_app/Screens/HomeScreen/homeScreen.dart';
import 'package:needs_app/Screens/profile/profile.dart';
import 'package:needs_app/sizeConfig.dart';

import '../Menustate.dart';
import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  final selected;

  const BottomNavBar({Key key, this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Color(0xffdadada).withOpacity(0.15), offset: Offset(0, -15), blurRadius: 20),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Shop Icon.svg',
                  width: getProportionateScreenWidth(30),
                  color: selected == MenuState.homepage ? kPrimaryColor : kTextColor.withOpacity(0.6),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
                }),
            IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Heart Icon.svg',
                  width: getProportionateScreenWidth(30),
                  color: selected == MenuState.favourite ? kPrimaryColor : kTextColor.withOpacity(0.6),
                ),
                onPressed: () {}),
            IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/Cart Icon.svg',
                  width: getProportionateScreenWidth(30),
                  color: selected == MenuState.cart ? kPrimaryColor : kTextColor.withOpacity(0.6),
                ),
                onPressed: () {
                  if (ModalRoute.of(context).settings.name != CartScreen.routeName)
                    Navigator.pushNamedAndRemoveUntil(
                        context, CartScreen.routeName, ModalRoute.withName(HomeScreen.routeName));
                }),
            IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/User Icon.svg',
                  width: getProportionateScreenWidth(30),
                  color: selected == MenuState.profile ? kPrimaryColor : kTextColor.withOpacity(0.6),
                ),
                onPressed: () {
                  if (ModalRoute.of(context).settings.name != Profile.routeName)
                    Navigator.pushNamedAndRemoveUntil(
                        context, Profile.routeName, ModalRoute.withName(HomeScreen.routeName));
                }),
          ],
        ),
      ),
    );
  }
}
