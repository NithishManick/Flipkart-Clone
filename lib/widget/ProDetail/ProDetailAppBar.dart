import 'package:flutter/material.dart';

class ProDetAppBar extends StatefulWidget {
  const ProDetAppBar({Key? key}) : super(key: key);

  @override
  State<ProDetAppBar> createState() => _ProDetAppBarState();
}

class _ProDetAppBarState extends State<ProDetAppBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.keyboard_backspace,color: Colors.black,),
        title: const Text("Mobiles",style: TextStyle(color: Colors.black),), actions:  [
      Row(
        children:  [
          const Icon(Icons.search,color: Colors.black,),
          SizedBox(width: width/20,),
          const Icon(Icons.shopping_cart_outlined,color: Colors.black,)
        ],
      ),
    ]);
  }
}
