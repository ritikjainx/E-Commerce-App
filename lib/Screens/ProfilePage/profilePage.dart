import 'package:flutter/material.dart';

import 'body.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profilePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
