
import 'package:flutter/material.dart';
import 'package:my_shop/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartCircleCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cartProvider = Provider.of<CartProvider>(context);
    return (_cartProvider.products.length > 0)
        ? Positioned(
        left: 24,
        top: 25,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red
          ),
          child: Text(
            _cartProvider.products.length.toString(),
            style: TextStyle(
                fontSize: 11
            ),
          ),
        )
    ) : Container();

  }
}
