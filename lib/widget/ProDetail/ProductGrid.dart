import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../screen/FullDetail.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
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
    {
      "name": "SAMSUNG S22",
      "price": "110000",
      "del": "Delivery by 11 PM",
      "sale": "Top Discount of the sale",
      "ram": "4 GB RAM",
      "free": "Free Delivery",
      "storage": "64 GB Storage",
      "display": "16.76 cm(6.6 inch) FULL HD+ Display",
      "battery": "6000 mAh",
      "camback": "50MP + 5MP + 2MP",
      "exchange": "Upto 30% off on Exchange",
      "camfront": "8MP Front Camera",
      "img":
          "https://www.luluhypermarket.com/cdn-cgi/image/f=auto/medias/1930531-13.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3w4OTkyMXxpbWFnZS9qcGVnfGhkMS9oZTMvMTI5NTM1Mzk1MTAzMDIvMTkzMDUzMS0xMy5qcGdfMTIwMFd4MTIwMEh8NzY4MDBkNjMyYzQ5MTRiMGQ1ZDY0MGFjMjgyYjVjOTVhZDRhZDhmYjg4ZmI0ZWM0YzIwOWJjMjA5MTUyMjEyMg",
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
            Icons.star_half,
            color: Colors.green,
          )
        ],
      ),
    },
    {
      "name": "POCO F3 GT",
      "price": "29000",
      "free": "Free Delivery",
      "del": "Delivery by 11 PM",
      "sale": "Top Discount of the sale",
      "ram": "4 GB RAM",
      "storage": "64 GB Storage",
      "display": "16.76 cm(6.6 inch) FULL HD+ Display",
      "battery": "6000 mAh",
      "camback": "50MP + 5MP + 2MP",
      "exchange": "Upto 30% off on Exchange",
      "camfront": "8MP Front Camera",
      "img":
          "https://www.kibotek.com/wp-content/uploads/2021/03/kiboTEK_poco_f3_001-1200x1200.png",
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
        ],
      ),
    },
    {
      "name": "ONEPLUS 10",
      "price": "49000",
      "free": "Free Delivery",
      "del": "Delivery by 11 PM",
      "sale": "Top Discount of the sale",
      "ram": "4 GB RAM",
      "storage": "64 GB Storage",
      "display": "16.76 cm(6.6 inch) FULL HD+ Display",
      "battery": "6000 mAh",
      "camback": "50MP + 5MP + 2MP",
      "camfront": "8MP Front Camera",
      "exchange": "Upto 30% off on Exchange",
      "img":
          "https://oasis.opstatics.com/content/dam/oasis/page/2022/operation/mar/0317/EU-IN_Green.png",
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
    {
      "name": "REDMI 11T",
      "price": "31999",
      "del": "Delivery by 11 PM",
      "sale": "Top Discount of the sale",
      "ram": "4 GB RAM",
      "storage": "64 GB Storage",
      "exchange": "Upto 30% off on Exchange",
      "display": "16.76 cm(6.6 inch) FULL HD+ Display",
      "battery": "6000 mAh",
      "camback": "50MP + 5MP + 2MP",
      "camfront": "8MP Front Camera",
      "free": "Free Delivery",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm9_NZIKgVK8D2OfnZoRsh9NFeoT6cYN2pIcg7-xUNN2mFaqNMnQ_5E0poPpXWEiZK8Ig&usqp=CAU",
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
            Icons.star_half_outlined,
            color: Colors.green,
          ),
        ],
      ),
    },
    {
      "name": "OPPO RENO 8",
      "price": "45999",
      "exchange": "Upto 30% off on Exchange",
      "del": "Delivery by 11 PM",
      "sale": "Top Discount of the sale",
      "ram": "4 GB RAM",
      "free": "Free Delivery",
      "storage": "64 GB Storage",
      "display": "16.76 cm(6.6 inch) FULL HD+ Display",
      "battery": "6000 mAh",
      "camback": "50MP + 5MP + 2MP",
      "camfront": "8MP Front Camera",
      "img":
          "https://img.poorvika.com/cdn-cgi/image/width=1600,height=1600,quality=75/1600_JPG/Mobiles/oppo/Oppo-Reno-8-5G/Oppo-Reno-8-03.jpg",
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
    {
      "name": "REALME GT 2",
      "price": "34999",
      "exchange": "Upto 30% off on Exchange",
      "del": "Delivery by 11 PM",
      "sale": "Top Discount of the sale",
      "free": "Free Delivery",
      "ram": "4 GB RAM",
      "storage": "64 GB Storage",
      "display": "16.76 cm(6.6 inch) FULL HD+ Display",
      "battery": "6000 mAh",
      "camback": "50MP + 5MP + 2MP",
      "camfront": "8MP Front Camera",
      "img":
          "https://www.gizmochina.com/wp-content/uploads/2021/02/ad9c48dc304440ea937f53ee43a87f0c.jpg",
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: mobilegrid.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, index) {
          return Card(
              elevation: 10,
              child: Container(
                  height: height / 1.9,
                  padding: const EdgeInsets.all(3),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //

                        Row(children: [
                          Expanded(
                            flex: 7,
                            child: IconButton(
                                icon: Image.network(
                                  mobilegrid[index]["img"],
                                ),
                                iconSize: 200,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Buy()),
                                  );
                                }),
                          ),
                          // const Spacer(
                          //   flex: 1
                          // ),
                          Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        mobilegrid[index]["name"],
                                        style: TextStyle(fontSize: 14.sp),
                                      ),
                                      Icon(Icons.favorite_border),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.currency_rupee),
                                      Text(
                                        mobilegrid[index]["price"],
                                        style: TextStyle(fontSize: 12.sp),
                                      ),
                                    ],
                                  ),
                                  mobilegrid[index]["rating"],
                                  Text(
                                    mobilegrid[index]["del"],
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                  Text(
                                    mobilegrid[index]["free"],
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                  Text(
                                    mobilegrid[index]["sale"],
                                    style: TextStyle(
                                        fontSize: 12.sp, color: Colors.green),
                                  ),
                                  Text(
                                    mobilegrid[index]["exchange"],
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ],
                              ))
                        ]),

                        SizedBox(
                          width: width / 2,
                          child: Chip(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Colors.grey,
                                  )),
                              label: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    Text(
                                      mobilegrid[index]["ram"],
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    VerticalDivider(
                                      indent: 1,
                                      endIndent: 1,
                                      thickness: 2,
                                      color: Colors.grey.shade600,
                                    ),
                                    Text(
                                      mobilegrid[index]["storage"],
                                      style: TextStyle(fontSize: 10.sp),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        SizedBox(
                          height: height / 700,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 1.6,
                              child: Chip(
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                label: Text(
                                  mobilegrid[index]["display"],
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 180,
                            ),
                            SizedBox(
                                width: width / 3.5,
                                child: Chip(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                        color: Colors.grey,
                                      )),
                                  label: Text(
                                    mobilegrid[index]["battery"],
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: height / 700,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width / 2.65,
                              child: Chip(
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                label: Text(
                                  mobilegrid[index]["camback"],
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width / 500,
                            ),
                            SizedBox(
                              width: width / 2.5,
                              child: Chip(
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                label: Text(
                                  mobilegrid[index]["camfront"],
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ])));
        });
  }
}
