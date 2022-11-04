import 'package:flutter/material.dart';

import '../widget/BuyNow/BottomBuy.dart';
import '../widget/BuyNow/BuyAppBar.dart';
import '../widget/BuyNow/Highlight.dart';
import '../widget/BuyNow/Info.dart';
import '../widget/BuyNow/SlideShow.dart';
import '../widget/BuyNow/Text1.dart';
import '../widget/BuyNow/Variant.dart';
import '../widget/BuyNow/View.dart';

class Buy extends StatefulWidget {


  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: BuyAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          const SlideShow(),
          const View(),
          Card(
            elevation: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text1(),
                ProductVarient(),
              ],
            ),
          ),
          Info(),
          const Highlight(),
        ],
      ),
      bottomNavigationBar: const BottomBuy(),
    );
  }
}
