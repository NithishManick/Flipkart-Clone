import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../screen/Details.dart';

class MenuHome extends StatelessWidget {
  MenuHome({Key? key}) : super(key: key);

  List product_name1 = [
    {
      "product_image":
          "https://www.pngplay.com/wp-content/uploads/7/Android-Mobile-Download-Free-PNG.png",
      "product_name": "Mobiles",
      "class": ProDetails()
    },
    {
      "product_image":
          "https://rukminim1.flixcart.com/image/416/416/j9it30w0/laptop-skin-decal/v/a/u/apple-logo-laptop-skin-sticker-hdm-15-6-original-imaezab8tc6fnjr6.jpeg?q=70",
      "product_name": "Electronics",
      "class": const ProDetails()
    },
    {
      "product_image":
          "https://www.pngmart.com/files/9/Special-offer-PNG-Photos.png",
      "product_name": "Top offers",
      "class": const ProDetails()
    },
    {
      "product_image":
          "https://www.transparentpng.com/thumb/roman-reigns/ILus5C-download-roman-reigns.png",
      "product_name": "Fashion",
      "class": const ProDetails()
    },
    {
      "product_image":
          "https://www.pngmart.com/files/7/Dining-Set-Transparent-Background.png",
      "product_name": "Furnitures",
      "class": const ProDetails()
    },
    {
      "product_image":
          "https://tse1.mm.bing.net/th?id=OIP.gSYnBQaJ_FMAAITXlI-WyAHaEK&pid=Api&P=0",
      "product_name": "Medicines",
      "class": const ProDetails()
    },
    {
      "product_image":
          "https://www.pngall.com/wp-content/uploads/5/Samsung-TV-PNG-Pic.png",
      "product_name": "Tv & Appliances",
      "class": const ProDetails()
    },
    {
      "product_image":
          "https://tse1.mm.bing.net/th?id=OIP.ph-Ex3rmOimQU58qxEQD-gHaEW&pid=Api&P=0",
      "product_name": "Flights & Hotels",
      "class": const ProDetails()
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 3.3,
      //width: width,
      child: GridView.count(
        childAspectRatio: 1/1.25,
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: List.generate(product_name1.length, (index) {
          return SizedBox(
            height: height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.network(product_name1[index]["product_image"]),
                  iconSize: 60,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => product_name1[index]["class"]),
                    );
                  },
                ),
                Text(
                  product_name1[index]["product_name"],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:  TextStyle(
                      fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
