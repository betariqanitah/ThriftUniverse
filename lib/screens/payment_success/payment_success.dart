import 'package:flutter/material.dart';

import 'package:thriftshop/screens/payment_success/components/body.dart';



class PaymentSuccessScreen extends StatelessWidget {
  static String routeName = "/payment_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        //title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}