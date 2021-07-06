import 'package:flutter/material.dart';

import '../../../Constants.dart';
import '../../../sizeConfig.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;
  SplashContent({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'Needs',
          style:
              TextStyle(color: kPrimaryColor, fontSize: getProportionateScreenHeight(36), fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
