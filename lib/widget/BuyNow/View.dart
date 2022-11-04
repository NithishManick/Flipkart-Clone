import 'package:flutter/material.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Chip(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.blue,
            )),
        label: const ListTile(
          trailing: Icon(Icons.rotate_90_degrees_ccw_outlined),
          title: Text("View in 360*"),
          subtitle: Text("Check how this looks"),
        ),
      ),
    );
  }
}
