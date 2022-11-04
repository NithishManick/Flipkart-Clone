import 'package:flutter/material.dart';

import 'FavouriteG/AD3.dart';
import 'FavouriteG/Ad2.dart';
import 'HomeG/GrocerySlider.dart';

class LocalFav extends StatefulWidget {
  const LocalFav({Key? key}) : super(key: key);

  @override
  State<LocalFav> createState() => _LocalFavState();
}

class _LocalFavState extends State<LocalFav> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return ListView(
      padding: EdgeInsets.all(20),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        AD2(),
        GrocerySlider(),
        SizedBox(height: height/80,),
        AD3(),
      ],
    );
  }
}
