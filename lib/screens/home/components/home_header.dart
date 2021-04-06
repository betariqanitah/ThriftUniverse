import 'package:flutter/material.dart';
import 'package:thriftshop/screens/cart/cart_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thriftshop/screens/cart/cart_screen.dart';
import 'package:thriftshop/screens/home/components/body.dart';
import 'package:thriftshop/constants.dart';
<<<<<<< HEAD
import 'package:thriftshop/screens/profile/profile_screen.dart';
=======
>>>>>>> 74ff954c3b64d2c5536020d336a6749e54ff07d0

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
<<<<<<< HEAD

=======
      
>>>>>>> 74ff954c3b64d2c5536020d336a6749e54ff07d0
     padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(30),
        horizontal: getProportionateScreenWidth(20),
        ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Thrift Universe', style: TextStyle(
           color: kPrimaryColor,fontSize: 30, fontWeight: FontWeight.bold
            )
          ),
        SizedBox(height: getProportionateScreenHeight(10),),

          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBtnWithCounter(
                svgSrc: "assets/icons/cart.svg",
                // numOfitem: ,
                // color: kTextColor,
                press: () => Navigator.pushNamed(context, CartScreen.routeName),
              ),
            ],
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/user2.svg",
<<<<<<< HEAD
            press: () => Navigator.pushNamed(context, ProfileScreen.routeName),
          ),

           SizedBox(width: kDefaultPaddin / 2)

=======
            press: () {},
          ),
          
           SizedBox(width: kDefaultPaddin / 2)
           
>>>>>>> 74ff954c3b64d2c5536020d336a6749e54ff07d0
        ],
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 74ff954c3b64d2c5536020d336a6749e54ff07d0
