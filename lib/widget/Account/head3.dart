import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Head3 extends StatefulWidget {
  const Head3({Key? key}) : super(key: key);

  @override
  State<Head3> createState() => _Head3State();
}

class _Head3State extends State<Head3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        child: Text(
          "Earn with Flipkart",
          style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
        ));
  }
}
