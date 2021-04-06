import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thriftshop/screens/address/create_address.dart';
import 'package:thriftshop/screens/cart/cart_screen.dart';
import 'package:thriftshop/screens/checkout/checkout_screen.dart';
import 'package:thriftshop/screens/details/details.screen.dart';
import 'package:thriftshop/screens/edit_profile/edit_profile_screen.dart';
import 'package:thriftshop/screens/forgot_password/forgot_password_screen.dart';
import 'package:thriftshop/screens/home/home_screen.dart';
import 'package:thriftshop/screens/login_success/login_success_screen.dart';
import 'package:thriftshop/screens/payment_success/payment_success.dart';
import 'package:thriftshop/screens/profile/profile_screen.dart';
import 'package:thriftshop/screens/sign_in/sign_in_screen.dart';
import 'package:thriftshop/screens/sign_up/sign_up_screen.dart';
import 'package:thriftshop/screens/complete_profile/complete_profile_screen.dart';
import 'screens/splash/splash_screen.dart';


//we use name route
//all our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  EditProfileScreen.routeName: (context) => EditProfileScreen(),
  CreateAddress.routeName: (context) => CreateAddress(),
  CheckOutScreen.routeName: (context) => CheckOutScreen(),
  PaymentSuccessScreen.routeName: (context) => PaymentSuccessScreen(),
};
