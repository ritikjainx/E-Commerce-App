import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OTP Verification"),
        Text('Sent an OTP code to +91 991291921.. \n the code will expire in '),
        Animation()
      ],
    );
  }
}

class Animation extends StatefulWidget {
  @override
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<Animation> with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      upperBound: 30,
      lowerBound: 1,
      vsync: this,
      duration: Duration(seconds: 30),
    );
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: GestureDetector(
        onTap: () {
          print('pressed');
          controller.forward();
        },
        child: Text(
          controller.value.toStringAsFixed(0),
          // '0:${controller.value}',
          style: TextStyle(fontSize: 40),
        ),
      ),
    ));
  }
}
