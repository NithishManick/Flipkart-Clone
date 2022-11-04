

import 'package:flutter/material.dart';

import '../widget/Filter/Battery.dart';
import '../widget/Filter/BrandFilter.dart';
import '../widget/Filter/CustomerRating.dart';
import '../widget/Filter/FilterBottom.dart';
import '../widget/Filter/PriceFilter.dart';
import '../widget/Filter/FilterAppBar.dart';
import '../widget/Filter/Ram.dart';
import '../widget/Filter/Storage.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: FilterAppBar(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          FilterPrice(),
          BrandFilter(),
          CustomerRating(),
          Ram(),
          StorageFilter(),
          BatteryFilter(),
        ],
      ),
     bottomNavigationBar: const FilterBottom(),
    );
  }
}
