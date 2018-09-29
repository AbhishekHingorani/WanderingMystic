import 'package:flutter/material.dart';

class PackageItemSchema {
  final String title;
  final String subtitle;
  final String price;
  final String days;
  final String nights;
  final String imageUrl;

  PackageItemSchema ({
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.days,
    @required this.nights,
    @required this.imageUrl,
  });
}