import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Info extends StatelessWidget {
  Info({Key? key}) : super(key: key);

  List view = [
    {"view": "View more from APPLE"}
  ];

  List mobilegrid = [
    {
      "name": "IPHONE 12",
      "price": "89000",
      "del": "Delivery by 11 PM",
      "free": "Free Delivery",
      "sale": "Top Discount of the sale",
      "ram": "4 GB RAM",
      "storage": "64 GB Storage",
      "display": "16.76 cm(6.6 inch) FULL HD+ Display",
      "battery": "6000 mAh",
      "camback": "50MP + 5MP + 2MP",
      "camfront": "8MP Front Camera",
      "exchange": "Upto 30% off on Exchange",
      "img": "https://www.pngall.com/wp-content/uploads/13/iPhone-14-PNG.png",
      "rating": Row(
        children: const [
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
        ],
      ),
    },
  ];

  List bott = [
    {"txt": " Replacement", "icon": Icons.house_outlined},
    {"txt": "No Cash on delivery", "icon": Icons.currency_rupee_outlined},
    {"txt": "Plus", "icon": Icons.bolt},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 10,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListView.builder(
                itemCount: view.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    view[index]["view"],
                    style: TextStyle(color: Colors.blue, fontSize: 14.sp),
                  );
                }),
            SizedBox(
              height: height / 60,
            ),
            ListView.builder(
                itemCount: mobilegrid.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mobilegrid[index]["name"] +
                            "(" +
                            mobilegrid[index]["ram"] +
                            ")",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      mobilegrid[index]["rating"],
                      SizedBox(
                        height: height / 60,
                      ),
                      Row(
                        children: [
                          Icon(Icons.currency_rupee),
                          Text(
                            mobilegrid[index]["price"],
                            style: TextStyle(fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      Text(
                        mobilegrid[index]["exchange"],
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Container(
                        height: height / 20,
                        margin: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            ListView.builder(
                                itemCount: bott.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Icon(bott[index]["icon"]),
                                      SizedBox(
                                        width: width / 3.6,
                                      ),
                                      Text(bott[index]["txt"],maxLines: 1,overflow: TextOverflow.ellipsis,),
                                    ],
                                  );
                                }),
                          ],
                        ),
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
