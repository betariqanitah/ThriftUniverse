import 'package:flutter/material.dart';
import 'package:thriftshop/constants.dart';
import 'package:thriftshop/models/checkout.dart';
import 'package:thriftshop/size_config.dart';

class CheckoutItemCard extends StatelessWidget {
   const CheckoutItemCard({
    Key key,
    @required this.checkout
  }) : super(key: key);
  
  
  final Checkout checkout;

 @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(checkout.product.image),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              checkout.product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\ Rp${checkout.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
              ),
            )
          ],
        )
      ],
    );
  }
}