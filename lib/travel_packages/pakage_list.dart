import 'package:flutter/material.dart';
import 'travel_search_area.dart';

class PackageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new NestedScrollView(
        //controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.17,
              floating: true,
              snap: true,
              backgroundColor: Color.fromRGBO(235, 139, 123, 1.0), //Background Color of AppBar when scrolled
              flexibleSpace: FlexibleSpaceBar(
                background: TravelSearchArea(),
              ),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            itemExtent: 20.0,
            itemBuilder: (BuildContext context, int index) {
              return new Text('entry $index');
            },
          ),
        ));
  }
}
