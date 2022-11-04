import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int myvalue = 0;

  final _formkey = GlobalKey<FormState>();

  var http;
  // Future<dynamic> getdata() async {
  //   String Url = "https://jsonplaceholder.typicode.com/albums";
  //   var response = await http.get(Uri.encodeFull(Url));
  //   var responsebody = json.decode(response.body);
  //   print(responsebody);
  // }
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   this.getdata();
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // print("Size -${size}");
    // print("Height - $height}");
    // print("Width $width");
    // print("Height - ${height / 10}");
    // print("Height - ${height * 0.1}");
    // print("Height - ${height / 20}");
    // print("Height - ${height * 0.2}");
    return Scaffold(
        body: Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Number cannot be empty";
              } else if (value.length <= 9) {
                return "number must contain 10 digits";
              } else {
                return null;
              }
            },
            decoration:
                InputDecoration(icon: Icon(Icons.phone), label: Text("Number")),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Name cannot be empty";
              } else if (value.length <= 2) {
                return "name must be greater than lenght 2";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                icon: Icon(Icons.person_sharp), label: Text("Name")),
            keyboardType: TextInputType.name,
          ),

          ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  var snackBar = SnackBar(
                    elevation: 10,
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.transparent,
                    content: AwesomeSnackbarContent(
                      color: Colors.pink,
                      title: 'On Snap!',
                      message:
                          'This is an example error message that will be shown in the body of snackbar!',
                      contentType: ContentType.failure,
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  // var nithish = SnackBar(
                  //   action: SnackBarAction(
                  //     textColor: Colors.red, label: 'Hii', onPressed: () {  },
                  //   ),
                  //   content: Text("Data is processing"),
                  // );
                  // ScaffoldMessenger.of(context).showSnackBar(nithish);
                  // Scaffold.of(context).showSnackBar(
                  //     SnackBar(content: Text('Data is in processing.')));
                }
              },
              child: Text("Hello"))

          // GestureDetector(
          //   child: Container(
          //     margin: EdgeInsets.all(20),
          //     width: 300,
          //     alignment: Alignment.center,
          //     color: Colors.red,
          //     child: Text(
          //       "hello",
          //     ),
          //   ),
          // ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Draggable(
          //         data: 10,
          //         childWhenDragging: Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.blue,
          //           child: Text("hello"),
          //         ),
          //         feedback: Container(
          //           alignment: Alignment.center,
          //           width: 100,
          //           height: 100,
          //           color: Colors.red,
          //           child: Icon(Icons.run_circle),
          //         ),
          //         child: Container(
          //           alignment: Alignment.center,
          //           height: 100,
          //           width: 100,
          //           color: Colors.purple,
          //           child: Text("hii"),
          //         )),
          //     DragTarget(
          //
          //         onAccept: (int data){
          //          setState(() {
          //            myvalue+=data;
          //          });
          //         },
          //         builder: (BuildContext context,List<dynamic> accepted,rejected){
          //       return Container(
          //         alignment: Alignment.center,
          //         height: 100,
          //         width: 100,
          //         color: Colors.grey,
          //         child: Text("my value is $myvalue"),
          //       );
          //     })
          //   ],
          // )
        ],
      ),
    ));
  }
}
