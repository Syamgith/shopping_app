import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

enum filterOptions { favorites, all }

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My shop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (filterOptions value) {
              print(value);
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: filterOptions.favorites,
              ),
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: filterOptions.all,
              )
            ],
          ),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
