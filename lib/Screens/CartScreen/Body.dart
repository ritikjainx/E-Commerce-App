import 'package:flutter/material.dart';
import 'package:needs_app/sizeConfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: getProportionateScreenHeight(88),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFFFE6E6)),
                child: ClipRRect(child: Text('12')),
              ),
            ),
          ],
        )
      ],
    );
  }
}
