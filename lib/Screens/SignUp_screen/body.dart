import 'package:flutter/material.dart';
import 'package:needs_app/sizeConfig.dart';
import 'Formtextfield.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Register Account',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(30), color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: double.infinity,
              height: getProportionateScreenHeight(20),
            ),
            Text(
              'Enter your deatils \nor login easly from social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenHeight(50)),
            FormTextFeild(),
          ],
        ),
      ),
    );
  }
}
