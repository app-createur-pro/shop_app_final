
import 'package:flutter/material.dart';
import 'package:my_shop/screens/home_screen.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {

  final String title = "Shop App";

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