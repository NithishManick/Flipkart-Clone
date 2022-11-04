import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/screen/Example.dart';
import 'package:project/screen/Homepage.dart';
import 'package:project/widget/HomePage/moretoexplore.dart';
import 'package:project/widget/bottom.dart';
import 'package:sizer/sizer.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Sizer(builder: ( context,orientation,deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: //Splash1(),

          SplashScreen(
            seconds: 5,
            navigateAfterSeconds: BottomNav(),
            image: Image.asset("assets/images/flipkart-icon.png"),
            photoSize: 60.0,
            backgroundColor: Colors.grey.shade200,
          ));
    }  );


  }
}
//
// class Splash1 extends StatefulWidget {
//   const Splash1({Key? key}) : super(key: key);
//
//   @override
//   State<Splash1> createState() => _Splash1State();
// }
//
// class _Splash1State extends State<Splash1> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(
//         const Duration(seconds: 1),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => const BottomNav())));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey.shade100,
//       child: Image.asset(
//         "assets/images/flip.png",
//       ),
//     );
//   }
// }
