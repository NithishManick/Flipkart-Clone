import 'package:flutter/material.dart';

class AccGrid extends StatefulWidget {
  const AccGrid({Key? key}) : super(key: key);

  @override
  State<AccGrid> createState() => _AccGridState();
}

class _AccGridState extends State<AccGrid> {
  List accgrid = [
    {"tit": "Orders", "lead": Icons.border_outer_sharp},
    {"tit": "Wishlist", "lead": Icons.favorite_border},
    {"tit": "Coupons", "lead": Icons.card_giftcard},
    {"tit": "Help Center", "lead": Icons.headphones},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: height/7,
      child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 7 / 2,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: List.generate(accgrid.length, (index) {
            return Row(
              children: [
                SizedBox(
                  width: width/2.5,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade300),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(color: Colors.black)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          accgrid[index]["lead"],
                          color: Colors.blue,
                        ),
                         SizedBox(
                          width: width/26,
                        ),
                        Text(
                          accgrid[index]["tit"],
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          })),
    );

  }
}
