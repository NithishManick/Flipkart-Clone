import 'package:flutter/material.dart';

class SearchHP extends StatefulWidget {
  const SearchHP({Key? key}) : super(key: key);

  @override
  State<SearchHP> createState() => _SearchHPState();
}

class _SearchHPState extends State<SearchHP> {
  bool switch1 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Container(
      height: height/12.5,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text("Brand Mall"),
              Switch(
                // This bool value toggles the switch.
                value: switch1,
                activeColor: Colors.black,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    switch1 = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            width: width/1.4,
            height: height/17,
            child: TextFormField(
              decoration: InputDecoration(
                // icon: Icon(Icons.search),
                hintText: "Search here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),

                suffixIcon: SizedBox(
                  width: width/4.5,
                  child: Row(
                    children:  [
                      Icon(
                        Icons.mic_none_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: width/20,
                      ),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                iconColor: Colors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
