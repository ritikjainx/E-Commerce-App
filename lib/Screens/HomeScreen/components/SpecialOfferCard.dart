import 'package:flutter/material.dart';

import '../../../sizeConfig.dart';

class SpecialOfferCard extends StatelessWidget {
  final String categoryTitle;
  final String imagePath;
  final Function onpress;

  const SpecialOfferCard({Key key, this.categoryTitle, this.imagePath, this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: SizedBox(
        height: getProportionateScreenHeight(100),
        width: getProportionateScreenWidth(240),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff343434).withOpacity(0.4), Color(0xff343434).withOpacity(0.2)]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  categoryTitle,
                  style: TextStyle(
                      color: Colors.white, fontSize: getProportionateScreenHeight(20), fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
