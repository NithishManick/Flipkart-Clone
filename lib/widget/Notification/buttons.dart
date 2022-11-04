import 'package:flutter/material.dart';

class ButtonsNoti extends StatefulWidget {
  const ButtonsNoti({Key? key}) : super(key: key);

  @override
  State<ButtonsNoti> createState() => _ButtonsNotiState();
}

class _ButtonsNotiState extends State<ButtonsNoti> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.shade300),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.black)
                      )
                  )
              ),
              child: const Text(
                "All",
                style: TextStyle(color: Colors.black),
              )
          ),




           SizedBox(
            width: width/13,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                  MaterialStateProperty.all(Colors.grey.shade300),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.black)))),
              child: Row(

                children: const [
                  Icon(Icons.percent_outlined,color: Colors.blue,),
                  Text(
                    "Offers",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
