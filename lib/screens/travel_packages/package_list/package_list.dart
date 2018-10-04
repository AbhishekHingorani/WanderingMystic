import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

import '../../../data_models/scoped_models/package_items_model.dart';
import '../../../data_models/models/package_item_schema.dart';
import './package_list_item.dart';

class PackageList extends StatefulWidget {

  PackageItemsModel model;

  PackageList(this.model);

  @override
    _PackageListState createState() => new _PackageListState();
}

class _PackageListState extends State<PackageList> {

  @override
    void initState() {
      widget.model.fetchPackages();
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<PackageItemsModel>(builder: (BuildContext context, Widget child, PackageItemsModel model){

      return LazyLoadScrollView(
        onEndOfPage: () {
          setState(() {
            model.addMorePackages();
          });
        },

        child: ListView.builder(
          itemCount: model.packages.length,
          itemBuilder: (context, index) {
            return buildListItem(model.packages[index], index);
          },
        ),
      );

    },);
  }

  GestureDetector buildListItem(PackageItemSchema package, int index){
    print("object");
    return GestureDetector(
      onTap: (){print("Change Page $index");},
      child: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        child: PackageListItem(packageItem: package),
      ),
    );
  }
}