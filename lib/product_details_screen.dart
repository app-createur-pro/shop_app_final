
import 'package:flutter/material.dart';
import 'package:my_shop/add_remove_button_widget.dart';
import 'package:my_shop/dropdown_button_widget.dart';
import 'package:my_shop/raised_button_widget.dart';
import 'package:my_shop/themes.dart';

import 'product.dart';
import 'subtitle_product_widget.dart';
import 'title_product_diget.dart';
import 'extensions.dart';

class ProductDetailsScreen extends StatefulWidget {

  final Product product;

  const ProductDetailsScreen({
    Key key,
    @required this.product}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.product.backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/shopping-cart.png'),
            onPressed: () => print("j'appuie sur le panier"),
          )
        ],
      ),
      backgroundColor:  widget.product.backgroundColor,
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
                    color: widget.product.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitleProductWidget(text: "Sneakers Category"),
                              TitleProductWidget(text: widget.product.title,)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitleProductWidget(text: "Price",),
                              TitleProductWidget(text: widget.product.price.displayPriceInEuros())
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: constraints.maxHeight * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 85.0, left: 25, right: 25),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                      "En stock",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),
                                  )
                              ),
                              Expanded(
                                  child: DropdownButtonWidget(backgroundColor: widget.product.backgroundColor,)                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(widget.product.description)
                                ],
                              ),
                            )),
                        Spacer(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: AddRemoveButtonWidget()
                              ),
                              Spacer(),
                              Expanded(
                                flex: 8,
                                child: RaisedButtonWidget(backgroundColor: widget.product.backgroundColor,),
                              )
                            ],
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight * 0.6)*0.35,
                  left: constraints.maxWidth*0.35,
                  child: Image.asset(
                    widget.product.image,
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