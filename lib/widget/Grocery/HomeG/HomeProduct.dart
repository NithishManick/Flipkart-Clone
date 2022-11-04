import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List product = [
      {
        "tit": "Parry's White Label Sugar",
        "sub1": "1 Kg",
        "sub2": "Expiry 15 Mar 2024",
        "sub3": "Current Price : 40"
      }
    ];
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 5,left: 5),
          shrinkWrap: true,
          itemCount: product.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Image.network("https://m.media-amazon.com/images/I/61sNvl1gXnL._SL1000_.jpg"),
          title: Text(product[index]["tit"]),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product[index]["sub1"]),
              Text(product[index]["sub2"]),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product[index]["sub3"]),
                  SizedBox(
                    width: width/1000,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    width: width / 3,
                    child: Chip(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                              color: Colors.blue,
                            )),
                        label: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add",
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              VerticalDivider(
                                indent: 0,
                                endIndent: 0,
                                thickness: 2,
                                color: Colors.blue,
                              ),
                              Icon(Icons.add)
                            ],
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
