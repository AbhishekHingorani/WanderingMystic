import 'package:flutter/material.dart';
import 'travel_search_area.dart';

class PackageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        TravelSearchArea(),
      ]),
    );
  }
}
