import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';
import './data_models/scoped_models/main_model.dart';

import './data_models/models/list_product.dart';
import 'screens/travel/travel_packages/travel_packages.dart';
import 'screens/product/product_list_page/product_list_item.dart';
import 'screens/product/product_list_page/product_list_page.dart';

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
    return ScopedModel<MainModel>(
      model: MainModel(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'SFProHeavy',
          primaryColor: Color.fromRGBO(253, 139, 123, 1.0),
          accentColor: Color.fromRGBO(255, 140, 90, 1.0),
        ),
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
            body: TabBarView(
              children: [
                new Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ProductListItem(
                          product: ListProduct(
                            id: "1", 
                            name: "IPHONE",
                            price: "20,000",
                            imageUrl: "https://image.ibb.co/d3rFML/1485982254-blob.jpg"
                          )
                        ),
                        ProductListItem(
                          product: ListProduct(
                            id: "1", 
                            name: "IPHONE",
                            price: "20,000",
                            imageUrl: "https://image.ibb.co/d3rFML/1485982254-blob.jpg"
                          )
                        ),
                        
                      ],
                    )
                  ),
                  color: Colors.white,
                ),
                new ProductListPage(),
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
