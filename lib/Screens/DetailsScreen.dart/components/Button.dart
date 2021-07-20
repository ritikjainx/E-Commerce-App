import 'package:flutter/material.dart';

import '../../../sizeConfig.dart';

class Buttons extends StatelessWidget {
  final IconData icon;
  final Function onpress;

  const Buttons({Key key, this.icon, this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(color: Color(0xffeeeff0), shape: BoxShape.circle),
        child: Icon(icon),
      ),
    );
  }
}
