import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Head1 extends StatefulWidget {
  const Head1({Key? key}) : super(key: key);

  @override
  State<Head1> createState() => _Head1State();
}

class _Head1State extends State<Head1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, top: 10),
        child:  Text(
          "Account Settings",
          style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
        ));
  }
}
