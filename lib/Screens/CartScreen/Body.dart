import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:needs_app/components/Product.dart';
import 'package:needs_app/constants.dart';
import 'package:needs_app/sizeConfig.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> addedproduct = [
    Product(
      id: 1,
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™",
      price: 64.99,
      description: description,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      id: 2,
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™",
      price: 64.99,
      description: description,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
    Product(
      id: 3,
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™",
      price: 64.99,
      description: description,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: ListView.builder(
            itemCount: addedproduct.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(addedproduct[index].id.toString()),
                child: ProductCard(addedproduct: addedproduct),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  setState(() {
                    addedproduct.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item removed from cart')));
                },
                background: Container(
                  color: Color(0xffffe6e6),
                  child: Row(
                    children: [
                      Spacer(),
                      SvgPicture.asset('assets/icons/Trash.svg'),
                    ],
                  ),
                ),
              );
            }),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xfffff5f6f9),
              offset: Offset(0, -12),
            ),
          ],
        ),
      ),
    ]);
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.addedproduct,
  }) : super(key: key);

  final List<Product> addedproduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          Container(
            height: getProportionateScreenHeight(88),
            width: getProportionateScreenWidth(88),
            // height: getProportionateScreenHeight(88),
            padding: EdgeInsets.all(10),
            child: AspectRatio(aspectRatio: 0.88, child: Image.asset(addedproduct[0].images[0])),
            decoration: BoxDecoration(color: Color(0xfffff5f6f9), borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(width: 10),
          SizedBox(
            height: getProportionateScreenHeight(88),
            width: SizeConfig.screenWidth * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  addedproduct[0].title,
                  maxLines: 2,
                  style: TextStyle(color: Colors.black, fontSize: getProportionateScreenHeight(20)),
                ),
                SizedBox(height: 5),
                Text.rich(TextSpan(
                  text: '\$ ${addedproduct[0].price.toString()}',
                  style: TextStyle(color: kPrimaryColor, fontSize: getProportionateScreenHeight(15)),
                  children: [TextSpan(text: ' x 1', style: TextStyle(color: kTextColor))],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
