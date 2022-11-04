import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  List det = [
    {
      "name": "SAMSUNG Galaxy Z Flip 3 5G",
      "ram": "8 GB RAM",
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
          Icon(
            Icons.star_half_outlined,
            color: Colors.green,
          ),
          Text("(303)")
        ],
      ),
      "price": "59999",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC49ROFwdcQKkd6-pcU06egNghWd-uf2PLkGckRoGpklgSsFN8eXWKl6ciP4tBQPOOVpU&usqp=CAU",
      "delivery": Row(
        children: const [
          Text("Delivery by Sun Oct 23 |"),
          Text(
            " Free Delivery",
            style: TextStyle(color: Colors.green),
          )
        ],
      ),
    }
  ];

  List bott = [
    {"txt": "Save for later", "icon": Icons.download_outlined},
    {"txt": "Remove", "icon": Icons.delete},
    {"txt": "Buy this now", "icon": Icons.bolt},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListView.builder(
                itemCount: det.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      det[index]["name"],
                      style:  TextStyle(fontSize: 14.sp),
                    ),
                    leading: Image.network(det[index]["img"]),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(det[index]["ram"]),
                        det[index]["rating"],
                        Row(
                          children: [
                            const Icon(
                              Icons.currency_rupee,
                              color: Colors.black,
                            ),
                            Text(
                              det[index]["price"],
                              style:
                                   TextStyle(fontSize: 16.sp, color: Colors.black),
                            )
                          ],
                        ),
                        det[index]["delivery"]
                      ],
                    ),
                  );
                }),
            const Divider(
              thickness: 2,
            ),
            Container(
              height: height/20,
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  ListView.builder(
                      itemCount: bott.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Icon(bott[index]["icon"]),
                            SizedBox(
                              width: width/78,
                            ),
                            Text(bott[index]["txt"]),
                            SizedBox(
                              width: width/20,
                            ),
                          ],
                        );
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
