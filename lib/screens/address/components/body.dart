import 'package:flutter/material.dart';
import 'package:thriftshop/screens/address/components/address_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       padding: EdgeInsets.symmetric(vertical: 20),
       child: Column(
         children: [
           SizedBox(height: 20),
           AdressForm(),
         ],
       ),
    );
  }
}