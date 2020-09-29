import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-details';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //margin: EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'RS ${loadedProduct.price}',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '${loadedProduct.description}',
                  textAlign: TextAlign.center,
                  softWrap: true,
                )),
          ],
        ),
      ),
    );
  }
}
