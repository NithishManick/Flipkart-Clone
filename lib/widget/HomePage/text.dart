import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextHP extends StatefulWidget {
  const TextHP({Key? key}) : super(key: key);

  @override
  State<TextHP> createState() => _TextHPState();
}

class _TextHPState extends State<TextHP> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 10),
      child: Text(
        "Sponsered By",
        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}
