import 'package:flutter/material.dart';

import 'Body.dart';

class OTPscreen extends StatelessWidget {
  static const routeName = '/OTPPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Body(),
    );
  }
}
