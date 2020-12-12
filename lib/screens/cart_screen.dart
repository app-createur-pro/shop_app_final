
import 'package:flutter/material.dart';
import 'package:my_shop/components/add_remove_button_widget.dart';
import 'package:my_shop/components/raised_button_widget.dart';
import 'package:my_shop/model/product.dart';
import 'package:my_shop/providers/cart_provider.dart';
import 'package:my_shop/resources/themes.dart';
import 'package:provider/provider.dart';
import 'package:my_shop/utils/extensions.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _cartProvider = Provider.of<CartProvider>(context);
    final _cartMap = _cartProvider.products;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: kTextColor
        ),
        title: Text(
          "Cart",
          style: TextStyle(
            color: kTextColor,
            fontSize: 18
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    Product _currentProduct = _cartMap.values.elementAt(index);
                    return Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                        leading: Image.asset(
                          _currentProduct.image,
                          height: 200,
                        ),
                        title: Text(_currentProduct.title),
                        subtitle: FittedBox(
                          child: Text(
                              "Sneakers Category"
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                        trailing: SizedBox(
                          child: Row(
                            children: [
                              Expanded(
                                child: AddRemoveButtonWidget(
                                  numberOfItemsToDisplay: _cartProvider.productQuantity(_currentProduct).toString(),
                                  pressedLessButton: () => _cartProvider.changeProductQuantity(_currentProduct, ChangeQuantity.REMOVE),
                                  pressedPlusButton: () => _cartProvider.changeProductQuantity(_currentProduct, ChangeQuantity.ADD),
                                ),
                                flex: 6,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Expanded(
                                child: Text(_cartProvider.productAmount(_currentProduct).displayPriceInEuros()),
                                flex: 3,
                              )
                            ],
                          ),
                          width: 100,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: _cartMap.length)
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(2,2)
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("VAT (20%)"),
                          Text(
                              "20 €",
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOTAL VAT INCLUDED",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                          Text(
                              "100 €",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                          width: double.infinity,
                            child: RaisedButtonWidget(title: "CHECKOUT",)
                        )
                    )
                  ]
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
