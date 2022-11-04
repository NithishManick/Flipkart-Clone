import 'package:flutter/material.dart';

class BuyAppBar extends StatefulWidget {
  const BuyAppBar({Key? key}) : super(key: key);

  @override
  State<BuyAppBar> createState() => _BuyAppBarState();
}

class _BuyAppBarState extends State<BuyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.keyboard_backspace_outlined,color: Colors.black,),
        actions:[

          Row(
            children: const [
              Icon(Icons.search,color: Colors.black,),
              SizedBox(width: 20,),
              Icon(Icons.mic_none_outlined,color: Colors.black,)
            ],

          ),
        ]

    );
  }
}
