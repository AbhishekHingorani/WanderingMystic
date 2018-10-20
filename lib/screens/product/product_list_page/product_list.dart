import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {

  //PackageItemsModel model;
  var model;

  ProductList(this.model);

  @override
    _ProductListState createState() => new _ProductListState();
}

class _ProductListState extends State<ProductList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Works"),
    );
  }
}
