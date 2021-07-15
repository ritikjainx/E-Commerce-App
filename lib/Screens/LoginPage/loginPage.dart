import 'package:flutter/material.dart';
import '../LoginPage/components/Body.dart';

class LoginPage extends StatelessWidget {
  static const routename = '/loginpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sign In',
          ),
        ),
        body: Body());
  }
}
