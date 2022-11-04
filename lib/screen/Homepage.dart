import 'package:flutter/material.dart';
import 'package:project/widget/HomePage/image.dart';
import 'package:project/widget/HomePage/menu.dart';
import 'package:project/widget/HomePage/moretoexplore.dart';
import 'package:project/widget/HomePage/recently.dart';
import 'package:project/widget/HomePage/search.dart';
import 'package:project/widget/HomePage/slide.dart';
import 'package:project/widget/HomePage/sponser.dart';

import 'package:project/widget/bottom.dart';


import '../widget/HomePage/Text1.dart';
import '../widget/HomePage/appbar.dart';
import '../widget/HomePage/drawer.dart';
import '../widget/HomePage/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: AppBarEg()),
      drawer: const DrawerExample(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children:  [
          const SearchHP(),
          const Slide1(),
           MenuHome(),
          const ImagesHP(),
          const TextHP(),
          const Sponser(),
          const ExploreHP(),
          const Text1(),
          const Recently(),

        ],
      ),
      // bottomNavigationBar: const BottomNav(),
    );
  }
}
