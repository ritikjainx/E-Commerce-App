import 'package:flutter/material.dart';
import 'package:needs_app/components/Product.dart';

import '../../../constants.dart';
import '../../../sizeConfig.dart';

class ProductCard extends StatefulWidget {
  final Product demoProduct;
  final Function onpress;

  const ProductCard({this.demoProduct, this.onpress});
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: widget.onpress,
        child: SizedBox(
          width: getProportionateScreenWidth(140),
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenWidth(15),
                ),
                decoration: BoxDecoration(
                  color: kSecondryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(widget.demoProduct.images[0]),
                ),
              ),
              Text(
                widget.demoProduct.title,
                style: TextStyle(fontSize: getProportionateScreenHeight(14), color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' \$ ${widget.demoProduct.price.toString()}',
                    style: TextStyle(fontSize: getProportionateScreenHeight(18), color: Colors.deepOrange),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.demoProduct.isFavourite = !widget.demoProduct.isFavourite;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kSecondryColor.withOpacity(0.1),
                        ),
                        child: Icon(
                          Icons.favorite,
                          size: getProportionateScreenHeight(15),
                          color: widget.demoProduct.isFavourite ? Color(0xffff4848) : Color(0xffdedbe4),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
