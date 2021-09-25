import 'package:flutter/material.dart';

class SubtitleProductWidget extends StatelessWidget {

  final String text;

  const SubtitleProductWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
    );
  }
}