import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List detail = [
    {"name": "Hey! Nithish ", "sub": "Explore Flipkart Plus", "trail": "110"}
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: detail.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              detail[index]["name"],
              style:  TextStyle(fontSize: 16.sp),
            ),
            subtitle: Text(detail[index]["sub"]),
            trailing: SizedBox(
              width: width/4,
              child: Chip(
                label: Row(
                  children: [
                    const Icon(Icons.offline_bolt,color: Colors.blue,),
                    Text(
                      detail[index]["trail"],
                      style:  TextStyle(fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
