import 'package:flutter/material.dart';

class BrandFilter extends StatefulWidget {
  const BrandFilter({Key? key}) : super(key: key);

  @override
  State<BrandFilter> createState() => _BrandFilterState();
}

class _BrandFilterState extends State<BrandFilter> {
  List catlog = [
    {
      "tit": "Brand ",
      "state": false,
      "opt1": "APPLE",
      "opt2": "SAMSUNG",
      "opt3": "REALME"
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
                    style: TextStyle(fontSize: 14),
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

              ],
            ),
          );
        });
  }
}
