import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Head4 extends StatefulWidget {
  const Head4({Key? key}) : super(key: key);

  @override
  State<Head4> createState() => _Head4State();
}

class _Head4State extends State<Head4> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        child: Text(
          "FeedBack & Information",
          style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
        ));
  }
}
