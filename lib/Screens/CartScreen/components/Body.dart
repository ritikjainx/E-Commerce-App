import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:needs_app/sizeConfig.dart';
import 'package:provider/provider.dart';
import 'package:needs_app/main.dart';
import 'checkoutbar.dart';
import 'productCard.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Consumer<CartProducts>(builder: (context, cartproducts, child) {
          return ListView.builder(
              itemCount: cartproducts.addedproduct.length,
              itemBuilder: (context, index) {
                final productdetails = cartproducts.addedproduct;
                return Dismissible(
                  key: Key(productdetails[index].id.toString()),
                  child: ProductCard(productdetails: productdetails[index]),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    setState(() {
                      cartproducts.removeproduct(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item removed from cart')));
                  },
                  background: Container(
                    padding: EdgeInsets.only(right: getProportionateScreenWidth(20)),
                    color: Color(0xffffe6e6),
                    child: Row(
                      children: [
                        Spacer(),
                        SvgPicture.asset(
                          'assets/icons/Trash.svg',
                          height: getProportionateScreenHeight(20),
                        ),
                      ],
                    ),
                  ),
                );
              });
        }),
      ),
      CheckOutBar(),
    ]);
  }
}
