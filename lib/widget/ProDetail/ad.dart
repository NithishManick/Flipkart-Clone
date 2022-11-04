import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AD extends StatefulWidget {
  const AD({Key? key}) : super(key: key);

  @override
  State<AD> createState() => _ADState();
}

class _ADState extends State<AD> {
  List AdList = [
  {
  "img":
  "https://www.dealsmagnet.com/images/external/motorola-edge-30-128-gb-flipkart-big-billion-days-17N6ymXj-2.jpeg?url=https%3A%2F%2Fi.imgur.com%2FHjg8GN9.png",
  "trail": Icons.arrow_forward_ios_rounded,
  "tit": "Motorola Edge 30 "
},
    ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return
        ListView.builder(
            itemCount: AdList.length,
            shrinkWrap: true,

            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: width/1.4,
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      Image.network(AdList[index]["img"]),
                      ListTile(
                        trailing: Icon(AdList[index]["trail"]),
                        title: Text(AdList[index]["tit"],style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                ),
              );
            }
    );
  }
}
