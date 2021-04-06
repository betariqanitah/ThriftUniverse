import 'package:flutter/material.dart';
import 'package:thriftshop/models/product.dart';

class Checkout {
  final Product product;

  Checkout({@required this.product});
}

  //demo data for our cart
List<Checkout> demoCheckout =[
  Checkout(product: products[0]),
  // Checkout(product: products[1]),
  // Checkout(product: products[3]),

];