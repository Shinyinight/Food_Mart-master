import 'package:flutter/material.dart';
import 'package:flutter_projects/providers/products.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, i) =>
          ProductItem(products[i].id, products[i].title, products[i].imageUrl),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
