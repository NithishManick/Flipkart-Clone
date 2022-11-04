import 'package:flutter/material.dart';

import '../widget/Grocery/CategoriesGrocery.dart';
import '../widget/Grocery/HomeG/AD.dart';
import '../widget/Grocery/HomeGrocery.dart';
import '../widget/Grocery/LocalFav.dart';
import '../widget/Grocery/Search.dart';
import '../widget/Grocery/TopOffers.dart';
import '../widget/bottom.dart';

class Grocery extends StatefulWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  // ScrollController _scrollController = ScrollController();
  // double _scrollPosition = 0;
  //
  // _scrollListener() {
  //   setState(() {
  //     _scrollPosition = _scrollController.position.pixels;
  //   });
  // }
  //
  // @override
  // void initState() {
  //   _scrollController.addListener(_scrollListener);
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                floating: true,
                snap: true,
                //pinned: true,
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                title:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width / 2.5,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Colors.lightBlue.shade200;
                                    return Colors.grey.shade300;
                                  },
                                ),
                                //MaterialStateProperty.all(Colors.grey.shade300),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.black)))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNav()),
                              );
                            },
                            icon: Image.asset(
                              "assets/images/flipkart-icon.png",
                              height: height / 40,
                              width: width / 20,
                            ),
                            label: const Text("Flipkart",
                                style: TextStyle(color: Colors.black))),
                      ),
                      SizedBox(
                        width: width / 2.5,
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.grey.shade300;
                                    }
                                    return Colors.lightBlue.shade200;
                                  },
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.black)))),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Grocery()),
                              );
                            },
                            icon: Image.asset(
                              "assets/images/flipkart-icon.png",
                              height: height / 40,
                              width: width / 20,
                            ),
                            label: const Text(
                              "Grocery",
                              style: TextStyle(color: Colors.black),
                            )),
          )
          ]
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(110),
                  child: Column(
                    children: const [
                      Search(),
                      TabBar(
                        indicatorColor: Colors.green,
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.green,
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: Text(
                              "Home",
                            ),
                          ),
                          Tab(
                              child: Text(
                            "Category",
                          )),
                          Tab(
                              child: Text(
                            "Favourite",
                          )),
                          Tab(
                              child: Text(
                            "Top Offers",
                          )),
                        ],
                      ),
                    ],
                  ),
                ))
          ];
        },
        body: const TabBarView(
          //controller: _scrollController,
          children: <Widget>[
            HomeGrocery(),
            CategoriesGrocery(),
            LocalFav(),
            TopOffers()
          ],
        ),
      )),
    );
  }
}
