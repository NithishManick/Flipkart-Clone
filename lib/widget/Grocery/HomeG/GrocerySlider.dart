import 'package:flutter/material.dart';

class GrocerySlider extends StatefulWidget {
  const GrocerySlider({Key? key}) : super(key: key);

  @override
  State<GrocerySlider> createState() => _GrocerySliderState();
}

class _GrocerySliderState extends State<GrocerySlider> {
  List oil = [
    {
      "name": "Gold Winner Refined Sunflower Oil",
      "img":
          "https://5.imimg.com/data5/SELLER/Default/2021/7/OR/NX/QW/56140060/gold-winner-refined-sunflower-oil-1-liter-500x500.png",
      "qua": "1 L",
      "price": "155",
      "off": "8% off"
    },
    {
      "name": "AASHIRVAAD Superior MP Atta",
      "img":
          "http://cdn.shopify.com/s/files/1/0173/7644/4470/products/1_9507ee15-250e-47d7-aacf-47ba482f9b33_grande.jpg?v=1658821152",
      "qua": "10 kg",
      "price": "495",
      "off": "8% off"
    },
    {
      "name": "Fortune Rice Bran Oil",
      "qua": "1 L",
      "price": "152",
      "off": "8% off",
      "img":
          "https://5.imimg.com/data5/SELLER/Default/2021/7/OR/NX/QW/56140060/gold-winner-refined-sunflower-oil-1-liter-500x500.png",
    },
    // {
    //   "name": "Fortune Rice Brain Oil",
    //   "img":
    //       "http://cdn.shopify.com/s/files/1/0173/7644/4470/products/1_9507ee15-250e-47d7-aacf-47ba482f9b33_grande.jpg?v=1658821152",
    //   "qua": "5 L",
    //   "price": "258",
    //   "off": "8% off"
    // },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ListTile(
          title: Text("Cooking Esential Corner"),
          subtitle: Text("Atta,oil,Rice & More"),
          trailing: ElevatedButton(child: Text("View all"), onPressed: () {}),
        ),
        Container(
          //padding: EdgeInsets.all(10),
          height: height / 2.3,
          child: ListView.builder(
              itemCount: oil.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: width / 2.3,
                  child: Card(
                    elevation: 10,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              oil[index]["img"],
                              height: height / 5,
                            ),
                            Text(oil[index]["name"]),
                            Text(oil[index]["qua"]),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee_outlined),
                                Text(oil[index]["price"]),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: width / 3,
                              child: Chip(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                        color: Colors.blue,
                                      )),
                                  label: IntrinsicHeight(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Add",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        VerticalDivider(
                                          indent: 0,
                                          endIndent: 0,
                                          thickness: 2,
                                          color: Colors.blue,
                                        ),
                                        Icon(Icons.add)
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            color: Colors.green,
                            child: Text(oil[index]["off"]),
                          ),),

                      ],
                    )


                  ),
                );
              }),
        ),
      ],
    );
  }
}
