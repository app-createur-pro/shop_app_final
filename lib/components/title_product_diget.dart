
import 'package:flutter/material.dart';

class TitleProductWidget extends StatelessWidget {

  final String text;

  const TitleProductWidget({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold
      ),
    );
  }
}