import 'package:flutter/material.dart';
import 'package:needs_app/constants.dart';
import 'package:needs_app/sizeConfig.dart';
import 'components/DicountCard.dart';
import 'components/SectionBreak.dart';
import 'components/SpecialOfferCard.dart';
import 'components/categories.dart';
import 'components/topbar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Topbar(),
          SizedBox(height: getProportionateScreenHeight(40)),
          Discountcard(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Categories(),
          SizedBox(height: getProportionateScreenHeight(15)),
          SectionBreakTitle(
            text: 'Special Offers for You',
            onpress: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpecialOfferCard(
                  imagePath: 'assets/images/Image Banner 2.png',
                  categoryTitle: 'Smartphone',
                  onpress: () {
                    print('preseed');
                  },
                ),
                SizedBox(width: getProportionateScreenWidth(15)),
                SpecialOfferCard(
                  imagePath: 'assets/images/Image Banner 3.png',
                  categoryTitle: 'Fashion',
                  onpress: () {
                    print('preseed');
                  },
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          SectionBreakTitle(
            text: 'Popular Products',
            onpress: () {},
          ),
        ],
      ),
    ));
  }
}
