
import 'package:flutter/material.dart';
import 'package:my_shop/screens/cart_screen.dart';

import 'cart_circle_counter_widget.dart';

class CartAppBarItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Image.asset(
            "assets/icons/shopping-cart-grey.png",
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()
                )
            );
          },
        ),
        CartCircleCounterWidget()
      ],
    );
  }
}
