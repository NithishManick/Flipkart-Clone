import 'package:flutter/material.dart';
import 'package:project/widget/Notification/buttons.dart';
import 'package:project/widget/Notification/msg.dart';

import '../widget/Notification/appbarNotification.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0), child: NotifAppBar()),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),

        children: const [
          ButtonsNoti(),
          Divider(
            thickness: 2,
          ),
          Msg(),
        ],
      ),
    );
  }
}
