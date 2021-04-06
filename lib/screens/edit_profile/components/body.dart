import 'package:flutter/material.dart';
import 'package:thriftshop/screens/edit_profile/components/edit_pic.dart';
import 'package:thriftshop/screens/edit_profile/components/edit_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          CompleteProfileForm(),
        ],
      ),
    );
  }
}