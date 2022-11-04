import 'package:flutter/material.dart';
import 'package:project/widget/Grocery/HomeG/GrocerySlider.dart';
class TopOffers extends StatefulWidget {
  const TopOffers({Key? key}) : super(key: key);

  @override
  State<TopOffers> createState() => _TopOffersState();
}

class _TopOffersState extends State<TopOffers> {



  @override
  Widget build(BuildContext context) {

    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(7),
      children: [
        GrocerySlider(),
        GrocerySlider(),
      ],
    );
  }
}
