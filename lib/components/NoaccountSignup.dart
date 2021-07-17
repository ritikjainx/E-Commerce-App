import 'package:flutter/material.dart';
import 'package:needs_app/Screens/SignUp_screen/signupscreen.dart';
import 'package:needs_app/sizeConfig.dart';

import '../constants.dart';

class NoAccountSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account ? ',
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, SignUp.routeName);
          },
          child: Text(
            'Sign UP',
            style: TextStyle(color: kPrimaryColor, fontSize: getProportionateScreenWidth(16)),
          ),
        )
      ],
    );
  }
}
