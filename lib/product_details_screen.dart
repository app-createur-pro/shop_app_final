
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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: constraints.maxHeight*0.35,
                    width: constraints.maxWidth,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sneakers Category",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Product name",
                                style: Theme.of(context).textTheme.headline4.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Price",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                              ),
                              Text(
                                  "120 €",
                                style: Theme.of(context).textTheme.headline4.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: constraints.maxHeight * 0.65,
                ),
                Positioned(
                  top: (constraints.maxHeight * 0.6)*0.35,
                  left: constraints.maxWidth*0.35,
                  child: Image.asset(
                    'assets/images/black-shoe.png',
                    width: constraints.maxWidth/2,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
