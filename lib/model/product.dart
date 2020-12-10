
import 'package:flutter/material.dart';

class Product {
  final String title, description, image;
  final UniqueKey id;
  final Color backgroundColor;
  final double price;

  Product(
      this.title,
      this.description,
      this.image,
      this.backgroundColor,
      this.price) : id = UniqueKey();

  static List<Product> products =
      [
        Product(
          'Red shoes',
          loremIpsum,
          'assets/images/red-shoe.png',
          Color(0xffb8636f),
          123
        ),
        Product(
            'Black shoes',
            loremIpsum,
            'assets/images/black-shoe.png',
            Color(0xff989796),
            87
        ),
        Product(
            'Blue shoes',
            loremIpsum,
            'assets/images/blue-shoe.png',
            Color(0xff5c8ab0),
            152
        ),
        Product(
            'Orange shoes',
            loremIpsum,
            'assets/images/orange-shoe.png',
            Color(0xffc1a78e),
            99
        ),
        Product(
            'B/W shoes',
            loremIpsum,
            'assets/images/black-and-white-shoe.png',
            Color(0xff989796),
            89
        ),
        Product(
            'Turquoise shoes',
            loremIpsum,
            'assets/images/turquoise-shoe.png',
            Color(0xff79c6c1),
            145
        ),

      ];


}

String loremIpsum = "Lorem Ipsum is slechts een proeftekst uit het drukkerij- en zetterijwezen. Lorem Ipsum is de standaard proeftekst in deze bedrijfstak sinds de 16e eeuw, toen een onbekende drukker een zethaak met letters nam en ze door elkaar husselde om een font-catalogus te maken. Het heeft niet alleen vijf eeuwen overleefd maar is ook, vrijwel onveranderd, overgenomen in elektronische letterzetting. Het is in de jaren '60 populair";