import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Head2 extends StatefulWidget {
  const Head2({Key? key}) : super(key: key);

  @override
  State<Head2> createState() => _Head2State();
}

class _Head2State extends State<Head2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        child:  Text(
          "My Activity",
          style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
        ));
  }
}
