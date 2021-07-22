import 'package:flutter/material.dart';
import 'package:needs_app/components/Cartstuff.dart';
import 'package:needs_app/components/Product.dart';
import 'package:needs_app/components/DefaultButton.dart';
import 'package:needs_app/sizeConfig.dart';
import 'package:needs_app/main.dart';
import 'Button.dart';
import 'ColorDots.dart';
import 'ProductImage.dart';
import 'Productdecription.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final Product product;
  Body({this.product});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          ProductDescription(product: product),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                child: Text(
                  'Choose Color',
                  style: TextStyle(color: Colors.black, fontSize: getProportionateScreenHeight(15)),
                ),
              ),
              ColorDots(product: product),
            ],
          ),
          AddToCart(
            product: product,
          )
        ],
      ),
    );
  }
}

class AddToCart extends StatefulWidget {
  final Product product;

  const AddToCart({Key key, this.product}) : super(key: key);

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(40), top: getProportionateScreenHeight(15)),
      margin: EdgeInsets.only(top: 15),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Buttons(
              icon: Icons.remove,
              onpress: () {
                setState(() {
                  counter--;
                });
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              color: Colors.white,
              child: Text(
                counter.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
            Buttons(
              icon: Icons.add,
              onpress: () {
                setState(() {
                  counter++;
                });
              },
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.5,
              child: Defaultbutton(
                text: 'Add To Cart',
                onpressed: () {
                  if (counter != 0) {
                    List<CartStuff> addedproductscopy = context.read<CartProducts>().addedproduct;
                    int count = 0;
                    int index;
                    for (int i = 0; i < addedproductscopy.length; i++) {
                      if (addedproductscopy[i].id == widget.product.id) {
                        count++;
                        index = i;
                      }
                    }
                    if (count == 1) {
                      context.read<CartProducts>().counter(counter: counter, index: index);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('$counter more ${widget.product.title} added to cart'),
                      ));
                    } else {
                      context.read<CartProducts>().addproducts(widget.product.images.first, widget.product.price,
                          widget.product.title, counter, widget.product.id);
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('$counter ${widget.product.title} added to cart')));
                    }
                  } else
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('please select number of items to be added')));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
