

import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {

  final Color backgroundColor;

  const RaisedButtonWidget({
    Key key,
    this.backgroundColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
      ),
      child: Text(
        "ADD TO CART",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15
        ),
      ),
      color: backgroundColor,
      onPressed: () => print("rien"),
    );
  }
}
