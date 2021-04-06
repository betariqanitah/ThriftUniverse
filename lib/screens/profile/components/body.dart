import 'package:flutter/material.dart';
import 'package:thriftshop/screens/edit_profile/edit_profile_screen.dart';
import 'package:thriftshop/screens/profile/components/profile_menu.dart';
import 'package:thriftshop/screens/sign_in/sign_in_screen.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Profile",
            icon: "assets/icons/User Icon.svg",
            press: () => Navigator.pushNamed(context, EditProfileScreen.routeName),
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () => Navigator.pushNamed(context, SignInScreen.routeName),
          ),
        ],
      ),
    );
  }
}