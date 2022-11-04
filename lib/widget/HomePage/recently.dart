import 'package:flutter/material.dart';

class Recently extends StatefulWidget {
  const Recently({Key? key}) : super(key: key);

  @override
  State<Recently> createState() => _RecentlyState();
}

class _RecentlyState extends State<Recently> {
  List product = [
    {
      "img":
          "https://www.citypng.com/public/uploads/preview/-21602680152czvchasxso.png",
      "cat": "Mobiles"
    },
    {
      "img":
          "https://starpng.com/public/uploads/preview/travel-element-headphones-png-image-51575744804hkcf1wkcol.png",
      "cat": "Headphone"
    },
    {
      "img":
      "https://freepngimg.com/save/31767-cricket-bat-hd/900x900",
      "cat": "Bat"
    },
    // {
    //   "img":
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6-KnLYDSLxQ5VySzwAbxYfcii35wAgJv2XLI-p-hHOy313OCuyXDJijnU17vpXVSBiGw&usqp=CAU",
    //   "cat": "Bat"
    // },
    // {
    //   "img":
    //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6-KnLYDSLxQ5VySzwAbxYfcii35wAgJv2XLI-p-hHOy313OCuyXDJijnU17vpXVSBiGw&usqp=CAU",
    //   "cat": "Tv"
    // },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height/5,
      child: ListView.builder(
          itemCount: product.length,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: width/3.2,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    IconButton(
                      iconSize: 100,
                      onPressed: () {},
                      icon: Image.network(product[index]["img"]),
                    ),
                    Text(product[index]["cat"]),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
