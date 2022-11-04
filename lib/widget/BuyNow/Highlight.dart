import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Highlight extends StatelessWidget {
  const Highlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List highlights = [
      {"tit": "ROM", "sub": "64 GB ROM", "lead": Icons.storage},
      {
        "tit": "Processor",
        "sub": "A15 Bionic Chip",
        "lead": Icons.memory_outlined
      },
      {
        "tit": "Rear Camera",
        "sub": "12MP + 12MP",
        "lead": Icons.linked_camera_rounded
      },
      {
        "tit": "Front Camera",
        "sub": "12MP",
        "lead": Icons.flip_camera_ios_outlined
      },
      {
        "tit": "Display",
        "sub": "6.1 inch Super Retina XDR Display",
        "lead": Icons.phone_android_outlined
      },
    ];

    return Card(
      elevation: 10,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "Highlights",
                  style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Row(
                      children: const [Icon(Icons.search), Text("Search")],
                    ))
              ],
            ),
            ListView.builder(
                itemCount: highlights.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(highlights[index]["tit"]),
                    leading: Icon(highlights[index]["lead"]),
                    subtitle: Text(highlights[index]["sub"],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                  );
                })
          ],
        ),
      ),
    );
  }
}
