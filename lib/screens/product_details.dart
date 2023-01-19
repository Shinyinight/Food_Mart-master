import 'dart:js';

import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  // final String title;
  // final String price;

  // ProductDetails(this.title, this.price);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
