

import 'package:flutter/material.dart';
import 'product.dart';
import 'product_details_screen.dart';

class ProductCardWidget extends StatelessWidget {

  final int index;

  const ProductCardWidget({
    Key key,
    @required List<Product> products,
    @required this.index,
  }) : _products = products, super(key: key);

  final List<Product> _products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsScreen(product: _products[index],)
                )
            );
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: _products[index].backgroundColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(_products[index].image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(_products[index].title),
        ),
        Text(_products[index].price.toStringAsFixed(0) + " €"),
      ],
    );
  }
}