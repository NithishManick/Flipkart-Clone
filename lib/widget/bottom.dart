import 'package:flutter/material.dart';
import 'package:project/main.dart';

import '../screen/Account.dart';
import '../screen/Cart.dart';
import '../screen/Categories.dart';
import '../screen/Homepage.dart';
import '../screen/Notifications.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List pages = [HomePage(), Categories(), Notifications(), Account(), Cart()];

  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[current_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          onTap: (int index) {
            setState(() {
              current_index = index;
            });
          },
          elevation: 0,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Account",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
          ],
        ));
  }
}
