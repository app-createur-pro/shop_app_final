

import 'package:flutter/cupertino.dart';
import 'package:my_shop/model/product.dart';

enum ChangeQuantity {
  ADD,
  REMOVE,
}

class CartProvider with ChangeNotifier {

  Map<String, Product> _products = Map();

  Map<String, Product> get products {
    return {..._products}; //to not return a pointer
  }

  double get productsAmount {
    double amount = 0.0;
    _products.forEach((key, value) {
      return value.amountInCartForSameProduct;
    });
    return amount;
  }

  double productAmount(Product product) {
    double amount = 0.0;
    amount = _products[product.id.toString()].amountInCartForSameProduct;
    return amount;
  }

  int productQuantity(Product product) {
    int numberInCart = 1;
    numberInCart = _products[product.id.toString()].numberInCart;
    return numberInCart;
  }

  void addProduct(Product product) {
    if (_products.containsKey(product.id)){
      _products[product.id.toString()].numberInCart++;
    } else {
      _products.putIfAbsent(product.id.toString(), () => product);
    }
    notifyListeners();
  }

  void changeProductQuantity(Product product, ChangeQuantity changeQuantity) {
    if (_products.containsKey(product.id)){
      if(changeQuantity == ChangeQuantity.ADD) {
        _products[product.id.toString()].numberInCart++;
      } else {
        if(product.numberInCart > 1) {
          _products[product.id.toString()].numberInCart--;
        }
      }
    }
    notifyListeners();
  }


  //remove product
  //changer la quantité de produits

  //fournir des données centralisées
  //prix du produit

}