

import 'package:flutter/cupertino.dart';
import 'package:my_shop/model/product.dart';

class CartProvider with ChangeNotifier {

  Map<String, Product> _products = Map();

  Map<String, Product> get products {
    return {..._products}; //to not return a pointer
  }

  void addProduct(Product product) {
    if (_products.containsKey(product.id)){
      // contient le produit, alors ajoutes le en quantité
    } else {
      _products.putIfAbsent(product.id.toString(), () => product);
    }
    notifyListeners();
  }


  //remove product
  //changer la quantité de produits

  //fournir des données centralisées
  //prix du produit

}