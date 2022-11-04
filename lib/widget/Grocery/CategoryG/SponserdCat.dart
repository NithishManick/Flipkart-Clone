import 'package:flutter/material.dart';

class SponseredCat extends StatelessWidget {
  const SponseredCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List add = [
      {
        "img":
            "https://rukminim1.flixcart.com/flap/960/960/image/ed04b09381eec3f9.jpg?q=75",
        "tit": "Shop Now"
      },
      {
        "img":
            "https://dealroup.com/wp-content/uploads/2020/05/Grocery-Offers-1024x536.jpg",
        "tit": "Look On"
      }
    ];

    List ProductSponserList = [
      {
        "img":
            "https://rukminim1.flixcart.com/flap/960/960/image/ed04b09381eec3f9.jpg?q=75",
        "trail": Icons.arrow_forward_ios_rounded,
        "tit": "Shop Now"
      },
      {
        "img":
            "https://dealroup.com/wp-content/uploads/2020/05/Grocery-Offers-1024x536.jpg",
        "trail": Icons.arrow_forward_ios_rounded,
        "tit": "Look On"
      },
      {
        "img":
            "https://s3images.zee5.com/wp-content/uploads/2021/10/11-Image-10-784x441.jpg",
        "trail": Icons.arrow_forward_ios_rounded,
        "tit": "View All"
      },
      {
        "img":
            "https://www.collectoffers.com/EditorImages/BBDTipSheet_mainbanner.jpg",
        "trail": Icons.arrow_forward_ios_rounded,
        "tit": "30% off"
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sponsered ",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Container(
          padding: EdgeInsets.only(top: 15),
          height: height / 3.45,

          child: ListView.builder(
              itemCount: ProductSponserList.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: width / 1.4,
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Image.network(ProductSponserList[index]["img"]),
                        ListTile(
                          trailing: Icon(ProductSponserList[index]["trail"]),
                          title: Text(ProductSponserList[index]["tit"]),
                        )
                      ],
                    ),
                  ),
                );
              }),


        )
      ],
    );
  }
}
