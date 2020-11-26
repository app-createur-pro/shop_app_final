
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/shopping-cart.png'),
            onPressed: () => print("j'appuie sur le panier"),
          )
        ],
      ),
      backgroundColor: Colors.grey,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: constraints.maxHeight,
                color: Colors.purple,
              ),
              Container(
                height: constraints.maxHeight * 0.6,
                color: Colors.green,
              ),
              Positioned(
                top: 5,
                left: 5,
                child: Image.asset(
                  'assets/images/black-shoe.png',
                  width: 200,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
