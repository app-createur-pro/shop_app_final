import 'package:flutter/material.dart';
import 'package:my_shop/resources/themes.dart';

class AddRemoveButtonWidget extends StatelessWidget {

  final VoidCallback pressedPlusButton;
  final VoidCallback pressedLessButton;
  final String numberOfItemsToDisplay;

  const AddRemoveButtonWidget({
    Key? key,
    required this.pressedPlusButton,
    required this.pressedLessButton,
    required this.numberOfItemsToDisplay,
  }) : super(key: key);

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
                onPressed: pressedLessButton
              ),
            ),
          ),
        ),
        Expanded(
            child: Text(
              numberOfItemsToDisplay,
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
                onPressed: pressedPlusButton,
              ),
            ),
          ),
        ),
      ],
    );
  }
}