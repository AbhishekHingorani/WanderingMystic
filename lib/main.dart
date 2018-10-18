import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';
import './data_models/scoped_models/package_items_model.dart';

import './data_models/models/package_item_schema.dart';
import 'screens/travel_packages/travel_packages.dart';
import 'screens/single_package_details/single_package_detail.dart';
import 'screens/feedback_form.dart';

void main(){ 
  //debugPaintSizeEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  static const IconData travelIcon = const IconData(0xe900, fontFamily: "icomoon");
  static const IconData homeIcon = const IconData(0xe901, fontFamily: "icomoon");
  static const IconData cartIcon = const IconData(0xe902, fontFamily: "icomoon");
  static const IconData userIcon = const IconData(0xe903, fontFamily: "icomoon");

  Widget build(BuildContext context) {
    return ScopedModel<PackageItemsModel>(
      model: PackageItemsModel(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'SFProHeavy',
        ),
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
            body: TabBarView(
              children: [
                new Container(
                  child: Center(child: SinglePackageDetails(PackageItemSchema(
                    title: "VENTURE VARANASI", 
                    subtitle: "SERENE FAMILY TRIP",
                    price: "20,000",
                    days: "3",
                    nights: "2",
                    imageUrl: "http://www.varthabharati.in/sites/default/files/images/articles/2018/07/5/141416.jpg"
                  ))),
                  color: Colors.white,
                ),
                new Container(
                  child: Center(child: Text("Products")),
                  color: Colors.white,
                ),
                new TravelPackages(),
                new Container(
                  child: Center(child: Text("Profile")),
                  color: Colors.white,
                ),
              ],
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: const Border(
                  top: const BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(homeIcon),
                  ),
                  Tab(
                    icon: new Icon(cartIcon),
                  ),
                  Tab(
                    icon: new Icon(travelIcon),
                  ),
                  Tab(
                    icon: new Icon(userIcon),
                  )
                ],
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Color.fromRGBO(226, 197, 125, 1.0),
              ),
            ),
            backgroundColor: Color.fromRGBO(64, 46, 50, 1.0),
          ),
        ),
      ),
    );
  }
}
