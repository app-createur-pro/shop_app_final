
import 'package:flutter/material.dart';
import 'package:my_shop/home_screen.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {

  String title = "Shop App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans'
      ),
      home: HomeScreen(title: title),
    );
  }


}