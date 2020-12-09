import 'package:flutter/material.dart';
import 'package:my_shop/resources/themes.dart';

class AddRemoveButtonWidget extends StatefulWidget {
  const AddRemoveButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  _AddRemoveButtonWidgetState createState() => _AddRemoveButtonWidgetState();
}

class _AddRemoveButtonWidgetState extends State<AddRemoveButtonWidget> {

  int _numberOfItemsToAdd = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey
                ),
                shape: BoxShape.circle
            ),
            child: FittedBox(
              child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.remove,
                    size: 50,
                    color: kTextColor,
                  ),
                onPressed: () {
                    if (_numberOfItemsToAdd > 1) {
                      setState(() {
                        _numberOfItemsToAdd--;
                      });
                    }
                },
              ),
            ),
          ),
        ),
        Expanded(
            child: Text(
              _numberOfItemsToAdd.toString(),
              textAlign: TextAlign.center,)
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey
                ),
                shape: BoxShape.circle
            ),
            child: FittedBox(
              child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(
                    Icons.add,
                    size: 50,
                    color: kTextColor,
                  ),
                onPressed: () {
                    setState(() {
                      _numberOfItemsToAdd++;
                    });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}