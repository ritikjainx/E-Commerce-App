import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../sizeConfig.dart';

class SvgImage extends StatelessWidget {
  final String svgPath;
  SvgImage(this.svgPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(
            0, getProportionateScreenWidth(20), getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
        child: SvgPicture.asset(
          svgPath,
          width: getProportionateScreenWidth(18),
        ));
  }
}
