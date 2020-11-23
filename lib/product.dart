
import 'package:flutter/material.dart';

class Product {
  final String title, description, image;
  final Color backgroundColor;
  final double price;

  Product(this.title, this.description, this.image, this.backgroundColor, this.price);

  static List<Product> products =
      [
        Product(
          'Red shoes',
          loremIpsum,
          'assets/images/red-shoe.png',
          Colors.red,
          123
        ),
        Product(
            'Black shoes',
            loremIpsum,
            'assets/images/black-shoe.png',
            Colors.grey,
            87
        ),
        Product(
            'Blue shoes',
            loremIpsum,
            'assets/images/blue-shoe.png',
            Colors.blue,
            152
        ),
        Product(
            'Orange shoes',
            loremIpsum,
            'assets/images/orange-shoe.png',
            Colors.brown,
            99
        ),
        Product(
            'B/W shoes',
            loremIpsum,
            'assets/images/black-and-white-shoe.png',
            Colors.grey,
            89
        ),
        Product(
            'Turquoise shoes',
            loremIpsum,
            'assets/images/turquoise-shoe.png',
            Colors.lightBlueAccent,
            145
        ),

      ];


}

String loremIpsum = "Lorem Ipsum is slechts een proeftekst uit het drukkerij- en zetterijwezen. Lorem Ipsum is de standaard proeftekst in deze bedrijfstak sinds de 16e eeuw, toen een onbekende drukker een zethaak met letters nam en ze door elkaar husselde om een font-catalogus te maken. Het heeft niet alleen vijf eeuwen overleefd maar is ook, vrijwel onveranderd, overgenomen in elektronische letterzetting. Het is in de jaren '60 populair";