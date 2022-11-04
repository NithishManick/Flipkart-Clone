import 'package:flutter/material.dart';

class AccGrid1 extends StatefulWidget {
  const AccGrid1({Key? key}) : super(key: key);

  @override
  State<AccGrid1> createState() => _AccGrid1State();
}

class _AccGrid1State extends State<AccGrid1> {
  List accgrid = [
    // {"tit": "Orders", "lead": Icons.border_outer_sharp},
    // {"tit": "Wishlist", "lead": Icons.favorite_border},
    {"tit": "Coupons", "lead": Icons.card_giftcard},
    {"tit": "Help Center", "lead": Icons.headphones},
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //margin: const EdgeInsets.only(left: 15, right: 15),
      //padding: const EdgeInsets.all(10),
      height: 80,
      width: 500,

      //color: Colors.blue,
      child: Row(
        children: [
          ListView.builder(
              itemCount: accgrid.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
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
                      children: [
                        Icon(
                          accgrid[index]["lead"],
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          accgrid[index]["tit"],
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
