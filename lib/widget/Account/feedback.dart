import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FeedBack1 extends StatefulWidget {
  const FeedBack1({Key? key}) : super(key: key);

  @override
  State<FeedBack1> createState() => _FeedBack1State();
}

class _FeedBack1State extends State<FeedBack1> {

  List opt=[
    {
      "lead": Icons.rule_sharp,
      "tit": "Terms,Policies & Licenses",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.question_mark_outlined,
      "tit": "Browse",
      "trail": Icons.chevron_right_rounded,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: opt.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              opt[index]["tit"],
              style: TextStyle(fontSize: 14.sp),
            ),
            trailing: Icon(opt[index]["trail"]),
            leading: Icon(opt[index]["lead"],color: Colors.blue,),
          );
        });
  }
}
