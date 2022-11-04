import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BatteryFilter extends StatefulWidget {
  const BatteryFilter({Key? key}) : super(key: key);

  @override
  State<BatteryFilter> createState() => _BatteryFilterState();
}

class _BatteryFilterState extends State<BatteryFilter> {
  List catlog = [
    {
      "tit": "Battery ",
      "state": false,
      "opt1": "More than 5000mAh",
      "opt2": "Below 4250 mAh",

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

              ],
            ),
          );
        });
  }
}
