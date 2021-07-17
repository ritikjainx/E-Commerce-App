import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../sizeConfig.dart';
import 'IconwithCounter.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: Container(
            decoration: BoxDecoration(
              color: kSecondryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search Product',
                  hintStyle: TextStyle(color: kTextColor),
                  prefixIcon: Icon(
                    Icons.search,
                    color: kTextColor,
                  ),
                  contentPadding: EdgeInsets.all(15),
                  fillColor: Colors.grey,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        IconButtonWithCounter(
          svgPath: 'assets/icons/Cart Icon.svg',
          numberofItems: 0,
          onpress: () {},
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        IconButtonWithCounter(
          svgPath: 'assets/icons/Bell.svg',
          numberofItems: 3,
          onpress: () {},
        ),
      ],
    );
  }
}
