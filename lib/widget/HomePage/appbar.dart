import 'package:flutter/material.dart';
import 'package:project/screen/Account.dart';
import 'package:project/screen/Homepage.dart';

import '../../screen/Grocery.dart';

class AppBarEg extends StatefulWidget {
  const AppBarEg({Key? key}) : super(key: key);

  @override
  State<AppBarEg> createState() => _AppBarEgState();
}

class _AppBarEgState extends State<AppBarEg> {
  bool isPressed = false;

  late MaterialColor bgcolor;
  final Color buttonColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    bool _hasBeenPressed = false;

    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: width / 2.5,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.grey.shade300;
                        return Colors.lightBlue.shade200;
                      },
                    ),
                    //MaterialStateProperty.all(Colors.grey.shade300),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Colors.black)))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                icon: Image.asset(
                  "assets/images/flipkart-icon.png",
                  height: height / 40,
                  width: width / 20,
                ),
                label: Text("Flipkart", style: TextStyle(color: Colors.black))),
          ),

          SizedBox(
            width: width / 2.5,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.lightBlue.shade200;
                        }
                        return Colors.grey.shade300;
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Colors.black)))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Grocery()),
                  );
                },
                icon: Image.asset(
                  "assets/images/flipkart-icon.png",
                  height: height / 40,
                  width: width / 20,
                ),
                label: Text(
                  "Grocery",
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
