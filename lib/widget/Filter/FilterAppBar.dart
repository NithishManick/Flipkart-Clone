import 'package:flutter/material.dart';

class FilterAppBar extends StatelessWidget {
  const FilterAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black26,
      title: const Text("Filters"),
     // actions: [Text("Clear Filters")],
    );
  }
}
