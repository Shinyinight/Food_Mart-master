// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/product_details.dart';
import 'package:flutter_projects/screens/products_overview.dart';
import 'package:provider/provider.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
          title: 'OnlineShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            fontFamily: 'Lato',
          ),
          home: ProductsOverview(),
          routes: {
            ProductDetails.routeName: (context) => ProductDetails(),
          }),
    );
  }
}
