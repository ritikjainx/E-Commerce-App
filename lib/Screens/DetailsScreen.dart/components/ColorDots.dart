import 'package:flutter/material.dart';
import 'package:needs_app/Screens/HomeScreen/Modals/Product.dart';

import '../../../sizeConfig.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.product.colors.length, (index) => colorDot(index)),
    );
  }

  GestureDetector colorDot(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selected = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(left: 40),
          padding: EdgeInsets.all(4),
          width: getProportionateScreenWidth(40),
          height: getProportionateScreenHeight(40),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: selected == index ? Colors.deepOrangeAccent : Colors.transparent),
          ),
          child: DecoratedBox(decoration: BoxDecoration(color: widget.product.colors[index], shape: BoxShape.circle)),
        ),
      );
}
