import 'package:flutter/material.dart';

import '../wigets/products_grid.dart';

class ProductsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnlineShop'),
      ),
      body: new ProductsGrid(),
    );
  }
}
