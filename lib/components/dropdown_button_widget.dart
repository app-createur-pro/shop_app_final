

import 'package:flutter/material.dart';
import 'package:my_shop/resources/themes.dart';

class DropdownButtonWidget extends StatefulWidget {
  
  final Color backgroundColor;
  
  const DropdownButtonWidget({
    Key key, 
    this.backgroundColor = Colors.grey,
  }) : super(key: key);

  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {

  String _currentSize = "36";

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        child: DropdownButton(
          isExpanded: true,
          hint: Text(
            "sizes",
            style: TextStyle(
                color: kTextColor
            ),
          ),
          value: _currentSize,
          underline: Container(),
          icon: Icon(
            Icons.arrow_drop_down,
            color: widget.backgroundColor,
          ),
          items: [
            DropdownMenuItem(
              value: "36",
              child: Text(
                  "36"
              ),
            ),
            DropdownMenuItem(
              value: "37",
              child: Text(
                  "37"
              ),
            ),
          ],
          onChanged: (value) {
            setState(() {
              _currentSize = value;
            });
          },
        )
    );
  }
}