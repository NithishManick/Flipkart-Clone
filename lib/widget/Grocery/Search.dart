import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: height / 15,
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
          width: width / 1.1,
          child: TextFormField(
            decoration: InputDecoration(
              // icon: Icon(Icons.search),
              hintText: "Search for Grocery Products",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),

              suffixIcon: Icon(
                Icons.mic_none_outlined,
                color: Colors.grey,
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
        ));
  }
}
