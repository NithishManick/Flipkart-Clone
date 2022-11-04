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
    return Container(
      margin: const EdgeInsets.only(left: 10, bottom: 10),
      child:  Text(
        "Recently Viewed",
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}
