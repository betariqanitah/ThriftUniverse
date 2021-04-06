import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thriftshop/constants.dart';
import 'package:thriftshop/screens/checkout/components/body.dart';
import 'package:thriftshop/screens/checkout/components/payment_card.dart';

class CheckOutScreen extends StatelessWidget {
   static String routeName = "/checkout";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar:PaymentCard(),
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
          Text("Checkout",
         style: TextStyle(color: Colors.black),
         ),
        ],
      ),
    );
  }
}
