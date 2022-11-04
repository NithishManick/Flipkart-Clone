import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Grid1 extends StatefulWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  State<Grid1> createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  List product_name1 = [
    {
      "icon": Icons.currency_bitcoin,
      "name": "Super Coin",
    },
    {
      "icon": Icons.card_giftcard,
      "name": "Coupons",
    },
    {
      "icon": Icons.feed,
      "name": "Feed",
    },
    {
      "icon": Icons.credit_card_outlined,
      "name": "Credit",
    },
    {
      "icon": Icons.shield_moon_outlined,
      "name": "Level up",
    },
    {
      "icon": Icons.camera_enhance_outlined,
      "name": "Camera",
    },
    {
      "icon": Icons.tv,
      "name": "Live",
    },
    {
      "icon": Icons.local_offer,
      "name": "Refer & Earn",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 0,
      mainAxisSpacing: 30,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      childAspectRatio: 1 / 1,
      children: List.generate(product_name1.length, (index) {
        return Column(
          children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: Colors.lightBlue.shade100,
                child: Icon(
                  product_name1[index]["icon"],
                  size: 25,
                )),
            SizedBox(
              height: height / 80,
            ),
            Text(
              product_name1[index]["name"],
              style:  TextStyle(fontSize: 10.sp),
            )
          ],
        );
      }),
    );
  }
}
