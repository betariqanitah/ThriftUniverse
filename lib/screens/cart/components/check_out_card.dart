<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thriftshop/components/default_button.dart';
import 'package:thriftshop/constants.dart';

import 'package:thriftshop/size_config.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
        ),
      // we use this height only for demo 
      // height: 174,
      decoration: BoxDecoration(color: Colors.white, 
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(30), topRight: Radius.circular(30) ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, -15),
          blurRadius: 20,
          color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add voucher code"),
                //here width is fixed that's wgy use const
                const SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(text: "\Rp.80.000",
                      style: TextStyle(fontSize: 16, color:Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
=======
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thriftshop/components/default_button.dart';
import 'package:thriftshop/constants.dart';

import 'package:thriftshop/size_config.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
        ),
      // we use this height only for demo 
      // height: 174,
      decoration: BoxDecoration(color: Colors.white, 
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(30), topRight: Radius.circular(30) ),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, -15),
          blurRadius: 20,
          color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add voucher code"),
                //here width is fixed that's wgy use const
                const SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(text: "\Rp.80.000",
                      style: TextStyle(fontSize: 16, color:Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
>>>>>>> 74ff954c3b64d2c5536020d336a6749e54ff07d0
}