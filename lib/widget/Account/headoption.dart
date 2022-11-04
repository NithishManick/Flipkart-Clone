import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Head extends StatefulWidget {
  const Head({Key? key}) : super(key: key);

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
          margin: const EdgeInsets.only(left: 10,top: 10),
          child:  Text("Credit Options",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),));
  }
}
