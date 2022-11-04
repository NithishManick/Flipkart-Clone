import 'package:flutter/material.dart';

import '../widget/Categories/Text.dart';
import '../widget/Categories/appbarCat.dart';
import '../widget/Categories/grid.dart';
import '../widget/Categories/grid1.dart';
import '../widget/bottom.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0), child: CatAppBar()),
      body: ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),

        children: const [
          CatGrid(),
          Text1(),
          Grid1(),
        ],

      ),

    );
  }
}
