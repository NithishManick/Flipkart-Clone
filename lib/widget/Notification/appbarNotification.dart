import 'package:flutter/material.dart';

class NotifAppBar extends StatefulWidget {
  const NotifAppBar({Key? key}) : super(key: key);

  @override
  State<NotifAppBar> createState() => _NotifAppBarState();
}

class _NotifAppBarState extends State<NotifAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text("Notifications"),
      elevation: 0,


    );
  }
}
