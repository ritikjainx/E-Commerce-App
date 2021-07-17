import 'package:needs_app/sizeConfig.dart';

import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double h;
  final double w;

  const Gap({this.h = 0, this.w = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(h),
      width: getProportionateScreenWidth(w),
    );
  }
}
