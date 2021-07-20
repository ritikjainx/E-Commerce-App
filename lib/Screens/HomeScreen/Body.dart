import 'package:flutter/material.dart';
import 'package:needs_app/Screens/DetailsScreen.dart/Detailscreen.dart';
import 'package:needs_app/Screens/HomeScreen/Modals/Product.dart';
import 'package:needs_app/components/Gap.dart';
import 'package:needs_app/sizeConfig.dart';
import 'components/DicountCard.dart';
import 'components/SectionBreak.dart';
import 'components/SpecialOfferCard.dart';
import 'components/categories.dart';
import 'components/productCard.dart';
import 'components/topbar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Topbar(),
            Gap(h: 20),
            Discountcard(),
            SizedBox(height: getProportionateScreenHeight(25)),
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
            Gap(h: 20),
            SectionBreakTitle(
              text: 'Popular Products',
              onpress: () {},
            ),
            Gap(h: 20),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      demoProducts.length,
                      (index) => ProductCard(
                        demoProduct: demoProducts[index],
                        onpress: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName, arguments: demoProducts[index]);
                        },
                      ),
                    ))),
          ],
        ),
      ),
    ));
  }
}
