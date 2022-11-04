import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

import '../../screen/Details.dart';

class CatGrid extends StatefulWidget {
  const CatGrid({Key? key}) : super(key: key);

  @override
  State<CatGrid> createState() => _CatGridState();
}

class _CatGridState extends State<CatGrid> {
  List product_name1 = [
    {
      "image": "assets/images/special.png",
      "name": "Offer Zone",
      "class": ProDetails()
    },
    {
      "image": "assets/images/grocery.jpg",
      "name": "Grocery",
      "class": ProDetails()
    },
    {
      "image": "assets/images/mobile.png",
      "name": "Mobiles",
      "class": ProDetails()
    },
    {
      "image": "assets/images/fashion.png",
      "name": "Fashion",
      "class": ProDetails()
    },
    {
      "image": "assets/images/e.jpg",
      "name": "Electronics",
      "class": ProDetails()
    },
    {"image": "assets/images/home.png", "name": "Home", "class": ProDetails()},
    {
      "image": "assets/images/pc.jpg",
      "name": "Personal Care",
      "class": ProDetails()
    },
    {
      "image": "assets/images/tv.png",
      "name": "TV & Appliances",
      "class": ProDetails()
    },
    {
      "image": "assets/images/fur.jpg",
      "name": "Furniture",
      "class": ProDetails()
    },
    {
      "image": "assets/images/flights.png",
      "name": "Flights & Hotels",
      "class": ProDetails()
    },
    {
      "image": "assets/images/ins.jpg",
      "name": "Insurance",
      "class": ProDetails()
    },
    {"image": "assets/images/toys.png", "name": "Toys", "class": ProDetails()},
    {
      "image": "assets/images/sports.png",
      "name": "Sports",
      "class": ProDetails()
    },
    {
      "image": "assets/images/medicine.jpg",
      "name": "Medicines",
      "class": ProDetails()
    },
  ];

  bool isloaded = true;

  bool _loading = false;
  int offset = 0;
  int time = 800;

  getImages() {
    setState(() {
      _loading = true;
    });
    Timer(
        const Duration(seconds: 2),
        () => {
              Text("done"),
              setState(() {
                _loading = false;
              })
            });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getImages();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return (_loading)
        ? GridView.count(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 4,
            crossAxisSpacing: 0,
            mainAxisSpacing: 30,
            childAspectRatio: 1 / 1.4,
            children: List.generate(product_name1.length, (index) {
              offset += 5;
              time = 800 + offset;
              return Shimmer.fromColors(
                  enabled: isloaded,
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  // period: Duration(milliseconds: 1000),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.lightBlue.shade100,
                        // backgroundImage: NetworkImage(
                        //   product_name1[index]["image"],
                        // )
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          product_name1[index]["name"],
                          style:
                              TextStyle(fontSize: 10.sp, color: Colors.black),
                        ),
                      ),
                    ],
                  ));
            }))
        : GridView.count(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 4,
            crossAxisSpacing: 0,
            mainAxisSpacing: 30,
            childAspectRatio: 1 / 1.4,
            children: List.generate(product_name1.length, (index) {
              offset += 5;
              time = 800 + offset;
              return Column(
                children: [
                  CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.lightBlue.shade100,
                      backgroundImage: AssetImage(
                        product_name1[index]["image"],
                      )),
                  SizedBox(
                    height: height / 80,
                  ),
                   Text(

                      product_name1[index]["name"],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.sp),
                    ),

                ],
              );
            }),
          );
  }

  // Shimmer getShimmerLoading() {
  //   return Shimmer.fromColors(
  //       child: child,
  //       baseColor: Colors.grey.shade300,
  //       highlightColor: Colors.grey.shade100);
  // }
}
