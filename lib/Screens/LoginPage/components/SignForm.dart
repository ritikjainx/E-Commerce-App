import 'package:flutter/material.dart';
import 'package:needs_app/Screens/HomeScreen/homeScreen.dart';
import 'package:needs_app/components/CustomsvgImage.dart';
import 'package:needs_app/components/DefaultButton.dart';
import 'package:needs_app/components/formStateErrors.dart';

import '../../../constants.dart';
import '../../../sizeConfig.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  String password;
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailTextFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          passwordTextFormField(),
          GestureDetector(
            onTap: () {
              print('pressed');
              setState(() {
                showpass = !showpass;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Show Password',
                  style: TextStyle(decoration: TextDecoration.underline, fontSize: getProportionateScreenHeight(10)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          FormStateError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Defaultbutton(
            text: 'continue',
            onpressed: () {
              if (_formKey.currentState.validate() && errors.isEmpty) {
                _formKey.currentState.save();
                Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField emailTextFormField() {
    return TextFormField(
        onSaved: (value) {
          email = value;
          print(email);
        },
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
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Enter your email',
          labelText: 'Email',
          suffixIcon: SvgImage('assets/icons/Mail.svg'),
        ));
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
        onSaved: (value) => password = value,
        validator: (value) {
          if (value.isEmpty && !errors.contains(kpassNullEroor)) {
            setState(() {
              errors.add(kpassNullEroor);
            });
          } else if (value.length < 8 && !errors.contains(kshortPassEroor) && !errors.contains(kpassNullEroor)) {
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
          return null;
        },
        obscureText: showpass,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Enter your password',
          labelText: 'Password',
          suffixIcon: SvgImage('assets/icons/Lock.svg'),
        ));
  }
}
