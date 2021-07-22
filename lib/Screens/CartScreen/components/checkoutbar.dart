import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:needs_app/components/DefaultButton.dart';
import '../../../main.dart';
import '../../../sizeConfig.dart';
import 'package:provider/provider.dart';

class CheckOutBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Color(0xfffff5f6f9),
            offset: Offset(0, -12),
            blurRadius: 30,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/receipt.svg'),
              Spacer(),
              Text('Add Discount Coupon'),
              SizedBox(width: 10),
              Icon(
                Icons.arrow_forward_ios,
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(TextSpan(
                text: 'Total \n',
                children: [
                  TextSpan(
                    text: '\$ ${context.read<CartProducts>().total().toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              )),
              Spacer(),
              SizedBox(
                width: SizeConfig.screenWidth * 0.5,
                child: Defaultbutton(
                  text: 'CheckOut',
                  onpressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
