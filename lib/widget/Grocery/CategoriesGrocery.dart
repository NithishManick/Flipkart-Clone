import 'package:flutter/material.dart';

import 'CategoryG/ImageC.dart';
import 'CategoryG/SponserdCat.dart';

class CategoriesGrocery extends StatefulWidget {
  const CategoriesGrocery({Key? key}) : super(key: key);

  @override
  State<CategoriesGrocery> createState() => _CategoriesGroceryState();
}

class _CategoriesGroceryState extends State<CategoriesGrocery> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView(
      padding: EdgeInsets.all(20),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        ImageC(),
        SizedBox(height: height/23,),
        SponseredCat(),
      ],
    );
  }
}
