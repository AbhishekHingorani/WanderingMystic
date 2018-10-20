import 'package:flutter/material.dart';

class Package {
  final String id;
  final String title;
  final String subtitle;
  final String price;
  final String days;
  final String nights;
  final String imageUrl;

  Package ({
    @required this.id,
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.days,
    @required this.nights,
    @required this.imageUrl,
  });

  factory Package.fromJson(Map<String, dynamic> json) {
    return Package(
      id: json["id"],
      title: json['title'],
      subtitle: json['subtitle'],
      price: json['price'],
      days: json['days'],
      nights: json['nights'],
      imageUrl: json['imageUrl'],
    );
  }
}