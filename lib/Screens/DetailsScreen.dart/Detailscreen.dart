import 'package:flutter/material.dart';
import 'components/Body.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/Details_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
