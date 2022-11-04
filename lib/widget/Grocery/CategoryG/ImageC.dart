import 'package:flutter/material.dart';

class ImageC extends StatelessWidget {
  const ImageC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // Image border
      child: SizedBox.fromSize(
        size: Size.fromRadius(80), // Image radius
        child:Image.network("https://rukminim1.flixcart.com/flap/1400/1400/image/15cbd99e6fcb6fc1.jpg?q=50", fit: BoxFit.cover),
      ),
    )    ;


        }
}
