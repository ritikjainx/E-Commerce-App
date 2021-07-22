import 'package:flutter/material.dart';
import 'package:needs_app/Screens/ProfilePage/profilePage.dart';
import 'package:needs_app/components/CustomsvgImage.dart';
import 'package:needs_app/components/DefaultButton.dart';
import 'package:needs_app/components/Gap.dart';
import 'package:needs_app/components/formStateErrors.dart';
import 'package:needs_app/components/socialMedia.dart';

import '../../constants.dart';
import '../../sizeConfig.dart';

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
          Gap(h: 30),
          buildPassFormField(),
          Gap(h: 30),
          buildConfirmPassFormField(),
          Gap(h: 40),
          FormStateError(errors: errors),
          Gap(h: 20),
          Defaultbutton(
            text: 'Create Account',
            onpressed: () {
              print(errors);
              if (_formkey.currentState.validate() && errors.isEmpty) {
                _formkey.currentState.save();
                print(_formkey.currentState.validate());
                Navigator.pushNamed(context, ProfilePage.routeName);
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

  TextFormField buildConfirmPassFormField() {
    return TextFormField(
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
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty && !errors.contains(kpassNullEroor)) {
          setState(() {
            errors.add(kpassNullEroor);
          });
        } else if (value.length > 0 &&
            value.length < 8 &&
            !errors.contains(kmatchPassEroor) &&
            !errors.contains(kpassNullEroor)) {
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
        } else if (!kemailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kinvalidEmailEroor) &&
            !errors.contains(kemailNullEroor)) {
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
