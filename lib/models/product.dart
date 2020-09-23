import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;
  Product({
    @required this.id,
    @required this.description,
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });
}
