import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExploreHP extends StatefulWidget {
  const ExploreHP({Key? key}) : super(key: key);

  @override
  State<ExploreHP> createState() => _ExploreHPState();
}

class _ExploreHPState extends State<ExploreHP> {
  List more = [

    {
      "tit": "Suggested for you",
      "sub": "Similar items you viewed",
      "trail": Icons.chevron_right_rounded,
      "lead":
          "https://p.kindpng.com/picc/s/478-4789051_apple-iphone-x-png-image-iphone-x-front.png"
    },

  ];

  List product1 = [
    {
      "img": "https://www.pngmart.com/files/15/Apple-iPhone-11-PNG-Image.png",
      "name": "Iphone 12",
      "price": "59999"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIeePMjEkzDmh9YXtYTsz5pN0lcZ6D50a8fBm_7hzvusZl1g7qbqWtrnSqZ6YSx45LsKY&usqp=CAU",
      "name": "Iphone 13",
      "price": "49999"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Container(
        height: height/3,
        margin: const EdgeInsets.only(top: 10,bottom: 10),
        child: ListView.builder(
            itemCount: more.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(more[index]["tit"],style: TextStyle(fontSize: 14.sp),),
                      subtitle: Text(more[index]["sub"]),
                      trailing: Icon(more[index]["trail"]),
                      leading: Image.network(more[index]["lead"]),
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,

                      shrinkWrap: true,
                      children: List.generate(product1.length, (index) {
                        return Column(
                          children: [
                            Image.network(product1[index]["img"]),
                            Text(product1[index]["name"],style: const TextStyle(fontSize: 15),),
                            Text(product1[index]["price"],style: const TextStyle(fontSize: 15),)
                          ],
                        );
                      }),
                    )
                  ],
                ),
              )

                ;
            }));
  }
}
