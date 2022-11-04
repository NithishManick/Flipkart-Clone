import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomBuy extends StatelessWidget {
  const BottomBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width / 2,
            child: TextButton(
                onPressed: () {},
                child:  Text(
                  "Add to cart",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                )),
          ),
          Container(
            width: width / 2.1,
            color: Colors.yellow,
            child: TextButton(
                onPressed: () {},
                child:  Text(
                  "Buy Now",
                  style: TextStyle(fontSize: 14.sp, color: Colors.black),
                )),
          ),
        ],
      ),
    );
  }
}
