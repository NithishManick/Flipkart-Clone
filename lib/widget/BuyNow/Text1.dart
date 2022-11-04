import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Text1 extends StatefulWidget {
  const Text1({Key? key}) : super(key: key);

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return

      Container(
          margin: EdgeInsets.only(left: 15,top: 15),
          child: Text("Select Varient",style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),));
  }
}
