import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Options1 extends StatefulWidget {
  const Options1({Key? key}) : super(key: key);

  @override
  State<Options1> createState() => _Options1State();
}

class _Options1State extends State<Options1> {
  List opt = [
    {
      "lead": Icons.calendar_today_rounded,
      "tit": "Flipkart Plus",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.person,
      "tit": "Edit Profile",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.wallet,
      "tit": "Saved Card & Wallet",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.location_on_outlined,
      "tit": "Saved Address",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.language_outlined,
      "tit": "Select Language",
      "trail": Icons.chevron_right_rounded,
    },
    {
      "lead": Icons.notification_important,
      "tit": "Notification Settings",
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
