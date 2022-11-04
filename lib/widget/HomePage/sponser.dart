import 'package:flutter/material.dart';


class Sponser extends StatefulWidget {
  const Sponser({Key? key}) : super(key: key);

  @override
  State<Sponser> createState() => _SponserState();
}

class _SponserState extends State<Sponser> {
  List ProductSponserList = [
    {
      "img":
          "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/09/pjimage-2-1568366593.jpg",
      "trail": Icons.arrow_forward_ios_rounded,
      "tit": "Up to 14% off"
    },
    {
      "img":
          "https://www.earticleblog.com/wp-content/uploads/2020/10/Flipkart-Big-Billion-Days-Sale-2020-1024x576.jpg",
      "trail": Icons.arrow_forward_ios_rounded,
      "tit": "Up to 14% off"
    },
    {
      "img":
          "https://s3images.zee5.com/wp-content/uploads/2021/10/11-Image-10-784x441.jpg",
      "trail": Icons.arrow_forward_ios_rounded,
      "tit": "Buy 1 Get 1"
    },
    {
      "img":
          "https://www.collectoffers.com/EditorImages/BBDTipSheet_mainbanner.jpg",
      "trail": Icons.arrow_forward_ios_rounded,
      "tit": "30% off"
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return  SizedBox(
      height: height/3.69,

      child:
      ListView.builder(
            itemCount: ProductSponserList.length,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: width/1.4,
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

    );
  }
}
