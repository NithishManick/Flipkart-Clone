import 'package:flutter/material.dart';
class DrawerExample extends StatefulWidget {
  const DrawerExample({Key? key}) : super(key: key);

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: height/8,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  trailing: Image.network(
                      "https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-logo-transparent-png-download-0.png")),
            ),
          ),
          const ListTile(
            title: Text("Flipkart Plus Zone"),
            leading: Icon(Icons.add_circle_outlined),
          ),
          const Divider(
            thickness: 2,
          ),
          const ListTile(
            title: Text("All Categories"),
            leading: Icon(Icons.grid_view_sharp),
          ),
          const ListTile(
            title: Text("Trending Stores"),
            leading: Icon(Icons.home_work_outlined),
          ),
          const ListTile(
            title: Text("More on Flipkart"),
            leading: Icon(Icons.grid_on_sharp),
          ),
          const Divider(
            thickness: 2,
          ),
          const ListTile(
            title: Text("Offer Zone"),
            leading: Icon(Icons.local_offer_outlined),
          ),
          const ListTile(
            title: Text("Sell on Flipkart"),
            leading: Icon(Icons.send_to_mobile_sharp),
          ),
          const Divider(
            thickness: 2,
          ),
          const ListTile(
            title: Text("My Offers"),
            leading: Icon(Icons.local_offer_rounded),
          ),
          const ListTile(
            title: Text("Coupons"),
            leading: Icon(Icons.price_change_rounded),
          ),
          const ListTile(
            title: Text("My Cart"),
            leading: Icon(Icons.shopping_cart),
          ),
          const ListTile(
            title: Text("My Account"),
            leading: Icon(Icons.person),
          ),
          const Divider(
            thickness: 2,
          ),
          Container(
            padding:  const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text("Notification"),
                SizedBox(
                  height: height/80,
                ),
                const Text("Help"),
                SizedBox(
                  height: height/80,
                ),
                Text("Privacy Policy"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
