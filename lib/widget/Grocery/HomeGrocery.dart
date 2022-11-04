import 'package:flutter/material.dart';

import 'HomeG/AD.dart';
import 'HomeG/GrocerySlider.dart';
import 'HomeG/HomeProduct.dart';
import 'HomeG/SlideG.dart';


class HomeGrocery extends StatefulWidget {
  const HomeGrocery({Key? key}) : super(key: key);

  @override
  State<HomeGrocery> createState() => _HomeGroceryState();
}

class _HomeGroceryState extends State<HomeGrocery> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return ListView(
      padding: EdgeInsets.all(10),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        // TabBarG(),
        AD1(),
        //SizedBox(height: height/200,),
        HomeProduct(),
        //SizedBox(height: height/70,),
        SlideG(),
        GrocerySlider()
    ],
    );
  }
}
