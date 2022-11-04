import 'package:flutter/material.dart';
class CartApp extends StatefulWidget {
  const CartApp({Key? key}) : super(key: key);

  @override
  State<CartApp> createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text("My Cart"),
        leading: const Icon(Icons.keyboard_arrow_left),


    );
  }
}
