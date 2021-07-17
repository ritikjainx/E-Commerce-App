import 'package:flutter/material.dart';
import 'package:needs_app/Screens/OTP_Screen/OTPScreen.dart';
import 'package:needs_app/components/CustomsvgImage.dart';
import 'package:needs_app/components/DefaultButton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('Complete Profile'),
          Text('Complete your details or connect with Social Media'),
          Details(),
        ],
      ),
    );
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Enter your First Name',
                suffixIcon: SvgImage('assets/icons/User.svg')),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Last Name',
                hintText: 'Enter your Last Name',
                suffixIcon: SvgImage('assets/icons/User.svg')),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: 'Enter your phone number',
                suffixIcon: SvgImage('assets/icons/Call.svg')),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Address',
              hintText: 'Enter your address',
              suffixIcon: SvgImage('assets/icons/Discover.svg'),
            ),
          ),
          Defaultbutton(
            text: 'Create Profile',
            onpressed: () {
              Navigator.pushNamed(context, OTPscreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
