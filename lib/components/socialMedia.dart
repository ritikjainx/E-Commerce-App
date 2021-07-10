import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../sizeConfig.dart';

class SocialMediaIcon extends StatelessWidget {
  final String icon;

  const SocialMediaIcon({Key key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getProportionateScreenWidth(20)),
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF5f6f9)),
      child: SvgPicture.asset(
        icon,
        fit: BoxFit.fill,
      ),
    );
  }
}
