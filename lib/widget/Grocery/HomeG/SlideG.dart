import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideG extends StatefulWidget {
  const SlideG({Key? key}) : super(key: key);

  @override
  State<SlideG> createState() => _SlideGState();
}

class _SlideGState extends State<SlideG> {
  List slide_show = [
    {
      "img":
      "https://thefaceofindia.in/wp-content/uploads/2022/10/Flipkart-grocery.jpg"
    },
    {
      "img":
      "https://newspaperads.ads2publish.com/wp-content/uploads/2021/04/flipkart-grocery-up-to-50-savings-on-groceries-ad-times-of-india-delhi-25-04-2021.png"
    },
    {
      "img":
      "https://dealroup.com/wp-content/uploads/2022/03/Flipkart-Grocery-Offers-Sale.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      //padding: EdgeInsets.only(top: ),
      height: height / 3,
      child: ImageSlideshow(
          width: double.infinity,
          height: height / 3,
          initialPage: 0,
          indicatorColor: Colors.black,
          indicatorBackgroundColor: Colors.grey,
          autoPlayInterval: 3000,
          isLoop: true,
          children: List.generate(slide_show.length, (index) {
            return Image.network(slide_show[index]["img"]);
          })
      ),
    );
  }
}
