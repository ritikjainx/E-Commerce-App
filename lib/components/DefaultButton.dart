import 'package:flutter/material.dart';

import '../Constants.dart';
import '../sizeConfig.dart';

class Defaultbutton extends StatelessWidget {
  final String text;
  final Function onpressed;
  const Defaultbutton({this.text, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: kPrimaryColor,
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: getProportionateScreenHeight(18)),
        ),
      ),
    );
  }
}
