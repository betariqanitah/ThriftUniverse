import 'package:flutter/material.dart';
import 'package:thriftshop/components/default_button.dart';
import 'package:thriftshop/constants.dart';
import 'package:thriftshop/screens/address/create_address.dart';
import 'package:thriftshop/screens/payment_success/payment_success.dart';
import 'package:thriftshop/size_config.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
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
      decoration: BoxDecoration(
        color: Colors.white, 
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(30), 
            topRight: Radius.circular(30) 
            ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text.rich(
                  TextSpan(
                    text: "Alamat:\n",
                    children: [
                      TextSpan(text: "Aan Furqan, Perum Mansion Garden Kav A.14, Tangerang Selatan, 15414, 082115140908",
                      style: TextStyle(fontSize: 16, color:Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          SizedBox(height: getProportionateScreenWidth(15)),
          
          Column(
            children: [
              Row(
                 children: [
                  Container(
                  child: Text(
                      "Payment: ",
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                ),
                Spacer(),
                Text("BCA-Transfer"),
                //here width is fixed that's wgy use const
                // const SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, size: 1, color: kTextColor ),
                ],
              )
            ],
          ),
            // Column(
            //    mainAxisSize: MainAxisSize.min,
            //    children: [
            //   Row(
             
            //   ),
            // ),

             Container(
              margin: EdgeInsets.only(right: 30.0, top: 30.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Sub Total: ",
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  Text(
                    "80.000",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only( right: 30.0, top: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Discount: ",
                      style: TextStyle(
                          fontSize: 13.0,
                      ),
                    ),
                  ),
                  Text(
                    "-",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only( right: 30.0, top: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Shipping: ",
                      style: TextStyle(
                          fontSize: 13.0,
                      ),
                    ),
                  ),
                  Text(
                    "10.000",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: getProportionateScreenWidth(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(text: "\Rp.90.000",
                      style: TextStyle(fontSize: 16, color:Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(100),
                  child: DefaultButton(
                    text: "Buy",
                     press: () => Navigator.pushNamed(context, PaymentSuccessScreen.routeName),
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}