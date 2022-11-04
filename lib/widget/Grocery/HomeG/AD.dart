import 'package:flutter/material.dart';

class AD1 extends StatefulWidget {
  const AD1({Key? key}) : super(key: key);

  @override
  State<AD1> createState() => _AD1State();
}

class _AD1State extends State<AD1> {
  @override
  Widget build(BuildContext context) {
    return
      Image.network("https://rukminim1.flixcart.com/flap/1800/1800/image/c1ab7707a6a9bbd9.jpg?q=80");
  }
}
