import 'package:flutter/material.dart';

import '../../../data_models/models/list_product.dart';

class SingleProductDetail extends StatelessWidget{

  ListProduct product;

  SingleProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(product.name),));
  }
}