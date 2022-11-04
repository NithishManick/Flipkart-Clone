import 'package:flutter/material.dart';

class ImagesHP extends StatefulWidget {
  const ImagesHP({Key? key}) : super(key: key);

  @override
  State<ImagesHP> createState() => _ImagesHPState();
}

class _ImagesHPState extends State<ImagesHP> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height/4,
      child: Image.network(
          "https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/offer-zone/credit-debit-card/flipkart-big-billion-days-offer-d.jpg"),
    );
  }
}
