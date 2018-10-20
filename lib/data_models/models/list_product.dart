import 'package:flutter/material.dart';

class ListProduct {
  final String id;
  final String name;
  final String price;
  final String imageUrl;

  ListProduct ({
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.imageUrl,
  });

  factory ListProduct.fromJson(Map<String, dynamic> json) {
    return ListProduct(
      id: json["id"],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }
}