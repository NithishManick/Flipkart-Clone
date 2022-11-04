import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Ram extends StatefulWidget {
  const Ram({Key? key}) : super(key: key);

  @override
  State<Ram> createState() => _RamState();
}

class _RamState extends State<Ram> {
  List catlog = [
    {
      "tit": "RAM ",
      "state": false,
      "opt1": "6 GB",
      "opt2": "8 GB",
      "opt3": "12 GB"
    },
  ];
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: catlog.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    catlog[index]["tit"],
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  height: height / 40,
                ),

                CheckboxListTile(
                  value: value,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('${catlog[index]["opt1"]}'),
                  onChanged: (value) =>
                      setState(() => this.value = value!),
                ),

                CheckboxListTile(
                  value: value1,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('${catlog[index]["opt2"]}'),
                  onChanged: (value1) =>
                      setState(() => this.value1 = value1!),
                ),
                CheckboxListTile(
                  value: value2,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('${catlog[index]["opt3"]}'),
                  onChanged: (value2) =>
                      setState(() => this.value2 = value2!),
                ),

                // ListTile(
                //   title: Text('${catlog[index]["opt1"]}'),
                //   leading: Checkbox(
                //     activeColor: Colors.blue,
                //     value: value,
                //     onChanged: (value) => setState(() => this.value = value!),
                //   ),
                // ),

                // ListTile(
                //   onTap: () {
                //     setState(() {
                //       this.value = value!;
                //     });
                //   },
                //   title: Text('${catlog[index]["opt1"]}'),
                //   leading: Checkbox(
                //     value: value,
                //     onChanged: (value) {
                //       setState(() {
                //         this.value = value!;
                //       });
                //     },
                //   ),
                // ),
                // ListTile(
                //   onTap: () {
                //     setState(() {
                //       value = value!;
                //     });
                //   },
                //   title: Text('${catlog[index]["opt2"]}'),
                //   leading: Checkbox(
                //     value: value,
                //     onChanged: (value) {
                //       setState(() {
                //         value = value!;
                //       });
                //     },
                //   ),
                // ),
                // ListTile(
                //   onTap: () {
                //     setState(() {
                //       value = value!;
                //     });
                //   },
                //   title: Text('${catlog[index]["opt3"]}'),
                //   leading: Checkbox(
                //     value: value,
                //     onChanged: (value) {
                //       setState(() {
                //         value = value!;
                //       });
                //     },
                //   ),
                // ),
              ],
            ),
          );
        });
  }
}
