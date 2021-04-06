import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thriftshop/constants.dart';
import 'package:thriftshop/screens/address/components/body.dart';

class CreateAddress extends StatelessWidget {
  static String routeName = "/create_address";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

   AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: kPrimaryColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Column(
        children: [
          Text("Add Adress",
         style: TextStyle(color: Colors.black),
         ),
        ],
      ),
    );
  }
}
