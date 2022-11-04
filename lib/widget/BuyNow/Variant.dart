import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductVarient extends StatefulWidget {
  const ProductVarient({Key? key}) : super(key: key);

  @override
  State<ProductVarient> createState() => _ProductVarientState();
}

class _ProductVarientState extends State<ProductVarient> {
  List varient = [
    {
      "lead": Icons.color_lens,
      "tit": "White",
      "tit1": "color:",
      "trail": Icons.chevron_right_rounded,
      "info": "6 more"
    },
    {
      "lead": Icons.sd_storage_outlined,
      "tit": "64 GB",
      "tit1": "storage:",
      "trail": Icons.chevron_right_rounded,
      "info": "3 more"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: varient.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Row(
              children: [
                Text(
                  varient[index]["tit1"],
                  style:  TextStyle(fontSize: 14.sp),
                ),
                Text(
                  varient[index]["tit"],
                  style:  TextStyle(fontSize: 14.sp),
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(varient[index]["info"]),
                Icon(varient[index]["trail"]),
              ],
            ),
            leading: Icon(
              varient[index]["lead"],
              color: Colors.blue,
            ),
          );
        });
  }
}
