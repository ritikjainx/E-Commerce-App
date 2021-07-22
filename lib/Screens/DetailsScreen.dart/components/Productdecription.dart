import 'package:flutter/material.dart';
import 'package:needs_app/components/Product.dart';

import '../../../sizeConfig.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15),
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenHeight(20)),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: double.infinity),
          Text(
            product.title,
            style: TextStyle(fontSize: getProportionateScreenHeight(20), fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Padding(
            padding: EdgeInsets.only(right: getProportionateScreenWidth(30)),
            child: Text(product.description,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(15),
                )),
          ),
          SizedBox(height: getProportionateScreenHeight(8)),
          GestureDetector(
            onTap: () {},
            child: Text('See More Detail >',
                style: TextStyle(fontSize: getProportionateScreenHeight(15), color: Colors.deepOrangeAccent)),
          ),
        ],
      ),
    );
  }
}
