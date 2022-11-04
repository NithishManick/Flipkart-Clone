import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../screen/Filter.dart';

class FilterPart extends StatefulWidget {
  const FilterPart({Key? key}) : super(key: key);

  @override
  State<FilterPart> createState() => _FilterPartState();
}

class _FilterPartState extends State<FilterPart> {
  final List<String> items = [
    'PRICE',
    'Popular',
    'Rating',
    'Newest First',
  ];

  var selectedValue;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: width / 2.7,
          height: height / 20,
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade500,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              hint: Text(
                'Sort By',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(
                            fontSize: 14.sp,
                          ),
                        ),
                      ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
            ),
          ),
        ),
        SizedBox(
          width: width / 35,
        ),
        SizedBox(
          height: height / 20,
          width: width / 4.1,
          child: ElevatedButton.icon(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.black)))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Filter()),
                );
              },
              icon: Icon(
                Icons.swap_horiz,
                color: Colors.black,
              ),
              label: Text(
                "Filter",
                style: TextStyle(color: Colors.black),
              )),
        ),
        Container(
            height: height / 20,
            width: width / 3.3,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade500,
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.compare),
                SizedBox(
                  width: width / 30,
                ),
                Text("Compare")
              ],
            )),
      ],
    );
  }
}
