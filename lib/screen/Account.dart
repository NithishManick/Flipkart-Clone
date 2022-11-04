import 'package:flutter/material.dart';
import 'package:project/widget/Account/AccGrid.dart';
import 'package:project/widget/Account/Head4.dart';
import 'package:project/widget/Account/activity.dart';
import 'package:project/widget/Account/feedback.dart';
import 'package:project/widget/Account/logout.dart';

import '../widget/Account/AccGrid1.dart';
import '../widget/Account/Accappbar.dart';
import '../widget/Account/details.dart';
import '../widget/Account/earn.dart';
import '../widget/Account/head1.dart';
import '../widget/Account/head2.dart';
import '../widget/Account/head3.dart';
import '../widget/Account/headoption.dart';
import '../widget/Account/options.dart';
import '../widget/Account/options1.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AccApp(),
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            Card(
              elevation: 10,
              child: Column(
                children: const [
                  Details(),
                  AccGrid(),
                  //AccGrid1(),
                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Head(),
                  Options(),
                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Head1(),
                  Options1(),
                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Head2(),
                  Activity(),
                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Head3(),
                  Earn(),
                ],
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Head4(),
                  FeedBack1(),
                ],
              ),
            ),
            const LogOut(),
          ],
        ));
  }
}
