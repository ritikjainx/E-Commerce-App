import 'package:flutter/material.dart';

import '../../../sizeConfig.dart';

class Discountcard extends StatelessWidget {
  const Discountcard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenHeight(20)),
      // height: getProportionateScreenHeight(100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff4a3298),
      ),

      child: Text.rich(TextSpan(
          text: 'End Of Season Sale !!',
          style: TextStyle(color: Colors.white, fontSize: getProportionateScreenHeight(25)),
          children: [
            TextSpan(
              text: "\nDiscounts upto 50%",
              style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: getProportionateScreenHeight(18),
                  fontWeight: FontWeight.bold),
            ),
          ])),
    );
  }
}
