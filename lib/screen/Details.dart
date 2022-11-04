import 'package:flutter/material.dart';
import 'package:project/widget/ProDetail/ProductGrid.dart';

import '../widget/ProDetail/FilterPart.dart';
import '../widget/ProDetail/ProDetailAppBar.dart';
import '../widget/ProDetail/ad.dart';

class ProDetails extends StatefulWidget {
  const ProDetails({Key? key}) : super(key: key);

  @override
  State<ProDetails> createState() => _ProDetailsState();
}

class _ProDetailsState extends State<ProDetails> {




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: ProDetAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          FilterPart(),
          AD(),
          ProductGrid(),

        ],
      ),
    );
  }
}
