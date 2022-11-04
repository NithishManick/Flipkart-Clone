import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List opt = [
    {
      "lead": Icons.reviews,
      "tit": "Reviews",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.question_answer,
      "tit": "Question & Answer",
      "trail": Icons.chevron_right_rounded,
    },


  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: opt.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              opt[index]["tit"],
              style:  TextStyle(fontSize: 18.sp),
            ),
            trailing: Icon(opt[index]["trail"]),
            leading: Icon(opt[index]["lead"],color: Colors.blue,),
          );
        });
  }
}
