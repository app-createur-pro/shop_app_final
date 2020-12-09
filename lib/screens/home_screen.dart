
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_shop/model/product.dart';

import '../components/product_card_widget.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  
  List<Product> _products = Product.products;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            "assets/icons/menu.png",
            width: 25,
          ),
          onPressed: () => print("bouton menu"),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/icons/shopping-cart-grey.png",
            ),
            onPressed: () => print("j'appuie sur le panier"),
          )
        ],
        title: Text(widget.title),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
          ),
          itemCount: _products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCardWidget(
              products: _products,
              index: index,);
          }),
    );
  }

}

