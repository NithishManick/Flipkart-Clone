import 'package:flutter/material.dart';

class AccApp extends StatefulWidget {
  const AccApp({Key? key}) : super(key: key);

  @override
  State<AccApp> createState() => _AccAppState();
}

class _AccAppState extends State<AccApp> {
  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text("My Account"), actions: const [
      Icon(Icons.search),
    ]);
  }
}
