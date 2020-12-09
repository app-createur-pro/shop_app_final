

import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {

  final Color backgroundColor;
  final String title;

  const RaisedButtonWidget({
    Key key,
    this.backgroundColor = Colors.grey,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
      ),
      child: Text(
        title,
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
