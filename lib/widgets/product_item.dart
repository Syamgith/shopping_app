import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String id;
  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Icon(
            Icons.favorite,
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}