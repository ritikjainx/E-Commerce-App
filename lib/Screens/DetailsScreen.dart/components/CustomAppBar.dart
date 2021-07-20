import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../sizeConfig.dart';

class CustomAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
            padding: const EdgeInsets.only(left: 30),
            child: appBarIcon(
                context: context,
                onpress: () {
                  Navigator.pop(context);
                },
                icon: Icons.arrow_back_ios)),
        Container(
          margin: EdgeInsets.only(right: 30),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          // height: getProportionateScreenHeight(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              Text(
                '4.5',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 5),
              SvgPicture.asset(
                'assets/icons/Star Icon.svg',
                height: 15,
              ),
            ],
          ),
        )
      ]),
    );
  }

  Container appBarIcon({BuildContext context, IconData icon, Function onpress}) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          icon: Icon(icon),
          onPressed: onpress,
        ));
  }
}
