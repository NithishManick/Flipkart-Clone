import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Msg extends StatefulWidget {
  const Msg({Key? key}) : super(key: key);

  @override
  State<Msg> createState() => _MsgState();
}

class _MsgState extends State<Msg> {
  List msg = [
    {
      "lead": Icons.percent_outlined,
      "tit": "Atta,Rice,Oil..Up to 50% Off!",
      "trail":
          "https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-logo-transparent-png-download-0.png",
      "sub":
          "No min order value! Avail Free SHipping on order Value of Min .500",
      "sub1": "5 days ago"
    },
    {
      "lead": Icons.percent_outlined,
      "tit": "Let us help you shop better!",
      "trail":
          "https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-logo-transparent-png-download-0.png",
      "sub":
          "Take this quick survey to help us understand your needs & improve your shopping experience ",
      "sub1": "5 hours ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: msg.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              msg[index]["tit"],
              style:  TextStyle(fontSize: 14.sp),
            ),
            trailing: Image.network(msg[index]["trail"]),
            leading: Icon(
              msg[index]["lead"],
              color: Colors.blue,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  msg[index]["sub"],maxLines: 2,overflow: TextOverflow.ellipsis ,
                ),
                Text(
                  msg[index]["sub1"],
                ),
              ],
            ),

          );
        });
  }
}
