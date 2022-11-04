import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  List opt = [
    {
      "lead": Icons.calendar_today_rounded,
      "tit": "Flipkart Pay Later",
      "trail": Icons.chevron_right_rounded,
      "sub": "Apply for instant credit card"
    },
    {
      "lead": Icons.credit_card_outlined,
      "tit": "Flipkart Axis Bank Credit Card",
      "trail": Icons.chevron_right_rounded,
      "sub": "Apply & enter world of Benefits!"
    }
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
            subtitle: Text(opt[index]["sub"]),
            trailing: Icon(opt[index]["trail"]),
            leading: Icon(opt[index]["lead"],color: Colors.blue,),
          );
        });
  }
}
