import 'package:flutter/material.dart';
import 'Body.dart';

class ForgetScreen extends StatelessWidget {
  static const routeName = '/forget_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Body(),
    );
  }
}
