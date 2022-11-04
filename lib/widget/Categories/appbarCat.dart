import 'package:flutter/material.dart';

class CatAppBar extends StatefulWidget {
  const CatAppBar({Key? key}) : super(key: key);

  @override
  State<CatAppBar> createState() => _CatAppBarState();
}

class _CatAppBarState extends State<CatAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("All Categories"),
      actions:[

        Row(
        children: const [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.mic_none_outlined)
        ],

      ),
      ]

    );
  }
}
