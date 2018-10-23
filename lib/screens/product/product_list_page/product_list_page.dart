import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../../data_models/scoped_models/main_model.dart';
import './product_search_area.dart';
import './product_list.dart';

class ProductListPage extends StatelessWidget {
  
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
                background: ProductSearchArea(),
              ),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          child: _buildProductList(context),
        )
    );
  }

  Widget _buildProductList(BuildContext context){
    return ScopedModelDescendant<MainModel>(builder: (BuildContext context, Widget child, MainModel model){
      return ProductList(model);
    });
  }

}
