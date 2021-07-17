import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../sizeConfig.dart';

class Categories extends StatelessWidget {
  final List<Map> categories = [
    {'icon': 'assets/icons/Flash Icon.svg', 'Text': 'Flash \nDeals'},
    {'icon': 'assets/icons/Bill Icon.svg', 'Text': 'Bills'},
    {'icon': 'assets/icons/Game Icon.svg', 'Text': 'Games'},
    {'icon': 'assets/icons/Gift Icon.svg', 'Text': 'Today\'s \nDeal'},
    {'icon': 'assets/icons/Discover.svg', 'Text': 'Explore \nmore'}
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(categories.length, (index) {
        return categoryCard(iconpath: categories[index]['icon'], text: categories[index]['Text']);
      }),
    );
  }

  Column categoryCard({String iconpath, String text}) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(55),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffecdf),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(20),
              child: SvgPicture.asset(
                iconpath,
                height: getProportionateScreenHeight(25),
              ),
            ),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(5)),
        Text(
          text,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
