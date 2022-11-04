import 'package:flutter/material.dart';
import 'package:project/widget/Cart/CartAppBar.dart';

import '../widget/Cart/address.dart';
import '../widget/Cart/detail.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const PreferredSize(
        preferredSize: Size.fromHeight(50.0), child: CartApp()),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          Address(),
          CartDetails(),

        ],
      )
    );
  }
}
