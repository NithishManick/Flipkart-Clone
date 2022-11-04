import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Slide1 extends StatefulWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> {
  List slide_show = [
    {
      "img":
          "https://s3b.cashify.in/gpro/uploads/2019/09/16135517/buyback_offer_banner.png"
    },
    {
      "img":
          "https://couponswala.com/blog/wp-content/uploads/2022/08/DIWALI-mobile-offer-min-1.png"
    },
    {
      "img":
          "https://s3.ap-south-1.amazonaws.com/happimobiles/homepage/384x-224.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height/4,
      child: ImageSlideshow(
          width: double.infinity,
          height: height/4,
          initialPage: 0,
          indicatorColor: Colors.black,
          indicatorBackgroundColor: Colors.grey,
          autoPlayInterval: 3000,
          isLoop: true,
          children: List.generate(slide_show.length, (index) {
            return Image.network(slide_show[index]["img"]);
          })
      ),
    )

      ;
  }
}
