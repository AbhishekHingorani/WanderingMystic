import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'travel_search_area.dart';
import '../../data_models/scoped_models/package_items_model.dart';
import './package_list/package_list.dart';

class TravelPackages extends StatelessWidget {

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
              pinned: true,
              backgroundColor: Color.fromRGBO(235, 139, 123, 1.0), //Background Color of AppBar when scrolled
              flexibleSpace: FlexibleSpaceBar(
                title: Text("data"),
                background: TravelSearchArea(),
              ),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          child: _buildPackageList(context),
        ));
  }

  Widget _buildPackageList(BuildContext context){
    return ScopedModelDescendant<PackageItemsModel>(builder: (BuildContext context, Widget child, PackageItemsModel model){
      return PackageList(model);
    });
  }
}
