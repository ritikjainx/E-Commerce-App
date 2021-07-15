import 'package:flutter/material.dart';
import 'package:needs_app/components/DefaultButton.dart';
import 'package:needs_app/constants.dart';
import 'package:needs_app/sizeConfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(30),
          ),
          Text(
            "OTP Verification",
            style: TextStyle(color: Colors.black, fontSize: getProportionateScreenHeight(30)),
          ),
          Text('Enter the OTP code Sent to to +91 991291921..'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('the code will expire in '),
              TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0),
                  duration: Duration(seconds: 30),
                  builder: (_, value, __) {
                    return Text(
                      '0:${value.toInt()}',
                      style: TextStyle(color: kPrimaryColor),
                    );
                  }),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Otpboxes(),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Defaultbutton(
            text: 'Continue',
            onpressed: () {},
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Text(
            'Resend OTP Code',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}

class Otpboxes extends StatefulWidget {
  @override
  _OtpboxesState createState() => _OtpboxesState();
}

class _OtpboxesState extends State<Otpboxes> {
  FocusNode focusnode2;
  FocusNode focusnode3;
  FocusNode focusnode4;
  @override
  void initState() {
    super.initState();
    focusnode2 = FocusNode();
    focusnode3 = FocusNode();
    focusnode4 = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    focusnode2.dispose();
    focusnode3.dispose();
    focusnode4.dispose();
  }

  void shiftfocus(FocusNode focusNode, String value) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildSizedBox(onchanged: (value) {
          shiftfocus(focusnode2, value);
        }),
        buildSizedBox(
            focusNode: focusnode2,
            onchanged: (value) {
              shiftfocus(focusnode3, value);
            }),
        buildSizedBox(
            focusNode: focusnode3,
            onchanged: (value) {
              shiftfocus(focusnode4, value);
            }),
        buildSizedBox(
            focusNode: focusnode4,
            onchanged: (value) {
              focusnode4.unfocus();
            }),
      ],
    );
  }

  SizedBox buildSizedBox({Function onchanged, FocusNode focusNode}) {
    return SizedBox(
      width: getProportionateScreenWidth(60),
      child: TextField(
        focusNode: focusNode,
        autofocus: true,
        obscureText: true,
        keyboardType: TextInputType.number,
        enabled: true,
        onChanged: onchanged,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 24),
        decoration: kOTPinputdecoration,
      ),
    );
  }
}
