import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:needs_app/components/Gap.dart';
import 'package:needs_app/constants.dart';
import 'package:needs_app/sizeConfig.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(h: 25),
          ProfileImage(),
          Gap(h: 25),
          ListOptions(svgicon: 'assets/icons/User Icon.svg', text: 'My Account'),
          ListOptions(svgicon: 'assets/icons/Bell.svg', text: 'Notifications'),
          ListOptions(svgicon: 'assets/icons/Settings.svg', text: 'Settings'),
          ListOptions(svgicon: 'assets/icons/User Icon.svg', text: 'Help Center'),
          ListOptions(svgicon: 'assets/icons/Log out.svg', text: 'Log Out'),
        ],
      ),
    );
  }
}

class ListOptions extends StatelessWidget {
  final String text;
  final String svgicon;

  const ListOptions({Key key, this.text, this.svgicon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenHeight(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(8),
            horizontal: getProportionateScreenWidth(20),
          ),
          tileColor: Color(0xfff5f6f9),
          leading: SvgPicture.asset(
            svgicon,
            color: kPrimaryColor,
          ),
          title: Text(
            text,
            style: TextStyle(fontSize: getProportionateScreenHeight(18)),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('pressed');
          },
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            child: Image.asset('assets/images/Profile Image.png'),
            radius: 60,
          ),
          Positioned(
            right: -12,
            bottom: 0,
            child: CircleAvatar(
              backgroundColor: Color(0xFFF5F6F9),
              radius: 25,
              child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
