import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Earn extends StatefulWidget {
  const Earn({Key? key}) : super(key: key);

  @override
  State<Earn> createState() => _EarnState();
}

class _EarnState extends State<Earn> {

  List opt =[
    {
      "lead": Icons.speaker,
      "tit": "Refer & Earn",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.thumb_up,
      "tit": "Flipkart Creator Studio",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.sell_outlined,
      "tit": "Sell on Flipkart",
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
              style:  TextStyle(fontSize: 14.sp),
            ),
            trailing: Icon(opt[index]["trail"]),
            leading: Icon(opt[index]["lead"],color: Colors.blue,),
          );
        });
  }
}
