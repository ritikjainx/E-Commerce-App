import 'package:flutter/material.dart';
import 'package:needs_app/Screens/ProfilePage/profilePage.dart';

import 'package:needs_app/components/CustomsvgImage.dart';
import 'package:needs_app/components/DefaultButton.dart';
import 'package:needs_app/components/formStateErrors.dart';
import 'package:needs_app/components/socialMedia.dart';
import 'package:needs_app/constants.dart';
import 'package:needs_app/sizeConfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Register Account',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(30), color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: double.infinity,
              height: getProportionateScreenHeight(20),
            ),
            Text(
              'Enter your deatils \nor login easly from social media',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenHeight(50)),
            FormTextFeild(),
          ],
        ),
      ),
    );
  }
}

class FormTextFeild extends StatefulWidget {
  @override
  _FormTextFeildState createState() => _FormTextFeildState();
}

class _FormTextFeildState extends State<FormTextFeild> {
  final _formkey = GlobalKey<FormState>();
  List<String> errors = [];
  String password;

  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildTextFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          TextFormField(
            validator: (value) {
              if (value != password && !errors.contains(kmatchPassEroor)) {
                setState(() {
                  errors.add(kmatchPassEroor);
                });
              }
              return null;
            },
            onChanged: (value) {
              if (value == password && errors.contains(kmatchPassEroor)) {
                setState(() {
                  errors.remove(kmatchPassEroor);
                });
              }
            },
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              hintText: 'Re-enter your password',
              suffixIcon: SvgImage('assets/icons/Lock.svg'),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          FormStateError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          Defaultbutton(
            text: 'Create Account',
            onpressed: () {
              print(errors);
              if (_formkey.currentState.validate()) {
                _formkey.currentState.save();
                print(_formkey.currentState.validate());
                // Navigator.pushNamed(context, ProfilePage.routeName);
              }
            },
          ),
          SizedBox(height: getProportionateScreenHeight(60)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialMediaIcon(icon: 'assets/icons/google-icon.svg'),
              SocialMediaIcon(icon: 'assets/icons/facebook-2.svg'),
              SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            'By creating account you also confirm that \nyou agree with our terms and conditions',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty && !errors.contains(kpassNullEroor)) {
          setState(() {
            errors.add(kpassNullEroor);
          });
        } else if (value.length > 0 && value.length < 8 && !errors.contains(kmatchPassEroor)) {
          setState(() {
            errors.add(kshortPassEroor);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kpassNullEroor)) {
          setState(() {
            errors.remove(kpassNullEroor);
          });
        } else if (value.length >= 8 && errors.contains(kshortPassEroor)) {
          setState(() {
            errors.remove(kshortPassEroor);
          });
        }
        password = value;
      },
      onSaved: (value) {
        password = value;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Your password',
        suffixIcon: SvgImage('assets/icons/Lock.svg'),
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter Your Mail',
        suffixIcon: SvgImage('assets/icons/Mail.svg'),
      ),
      validator: (value) {
        if (value.isEmpty && !errors.contains(kemailNullEroor)) {
          setState(() {
            errors.add(kemailNullEroor);
          });
        } else if (!kemailValidatorRegExp.hasMatch(value) && !errors.contains(kinvalidEmailEroor)) {
          setState(() {
            errors.add(kinvalidEmailEroor);
          });
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kemailNullEroor)) {
          setState(() {
            errors.remove(kemailNullEroor);
          });
        } else if (kemailValidatorRegExp.hasMatch(value) && errors.contains(kinvalidEmailEroor)) {
          setState(() {
            errors.remove(kinvalidEmailEroor);
          });
        }
        // return null;
      },
      onSaved: (value) {
        email = value;
        print(email);
      },
    );
  }
}
