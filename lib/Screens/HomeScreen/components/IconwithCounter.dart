import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../sizeConfig.dart';

class IconButtonWithCounter extends StatelessWidget {
  final String svgPath;
  final int numberofItems;
  final Function onpress;

  const IconButtonWithCounter({this.svgPath, this.numberofItems, this.onpress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onpress,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(11.5)),
                height: getProportionateScreenHeight(46),
                width: getProportionateScreenWidth(46),
                decoration:
                    BoxDecoration(color: kSecondryColor.withOpacity(0.1), borderRadius: BorderRadius.circular(50)),
                child: SvgPicture.asset(
                  svgPath,
                )),
            if (numberofItems != 0)
              Positioned(
                top: -3,
                right: 0,
                child: Container(
                    child: Center(
                        child: Text(
                      numberofItems.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(10),
                          height: 1),
                    )),
                    height: getProportionateScreenHeight(16),
                    width: getProportionateScreenWidth(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffff4848),
                    )),
              )
          ],
        ));
  }
}
