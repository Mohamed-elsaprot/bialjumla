import 'package:bialjumla/features/add_to_cart/view/add_to_cart_body.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return AddToCartBody(index: index,);
  }
}
