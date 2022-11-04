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
        margin: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
        child: Row(
          children:  [
            Text(
              "More on Flipkart",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
            Divider(
              thickness: 2,
              indent: 100,
              endIndent: 10,
            ),
          ],
        ));
  }
}
