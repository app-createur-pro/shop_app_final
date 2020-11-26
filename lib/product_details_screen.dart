
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double appBarHeight = AppBar().preferredSize.height;
    double screenPadding = MediaQuery.of(context).padding.top;
    double screenHeight = (screenSize.height)-appBarHeight-screenPadding;
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
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: screenHeight,
              color: Colors.purple,
            ),
            Container(
              height: screenHeight*0.6,
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
        ),
      ),
    );
  }
}
