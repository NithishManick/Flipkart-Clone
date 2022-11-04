import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FilterBottom extends StatefulWidget {
  const FilterBottom({Key? key}) : super(key: key);

  @override
  State<FilterBottom> createState() => _FilterBottomState();
}

class _FilterBottomState extends State<FilterBottom> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Products Found"),

          Container(
            width: width / 2.1,
            color: Colors.orange,
            child: TextButton(
                onPressed: () {},
                child:  Text(
                  "Apply",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
