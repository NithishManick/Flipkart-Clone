import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StorageFilter extends StatefulWidget {
  const StorageFilter({Key? key}) : super(key: key);

  @override
  State<StorageFilter> createState() => _StorageFilterState();
}

class _StorageFilterState extends State<StorageFilter> {
  List catlog = [
    {
      "tit": "Internal Storage ",
      "state": false,
      "opt1": "64 GB",
      "opt2": "128 GB",
      "opt3": "256 GB",
      "opt4":"1 TB"
    },
  ];
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
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
                CheckboxListTile(
                  value: value3,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('${catlog[index]["opt4"]}'),
                  onChanged: (value3) =>
                      setState(() => this.value3 = value3!),
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
