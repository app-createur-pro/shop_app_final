
import 'package:flutter/material.dart';
import 'package:my_shop/themes.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/shopping-cart.png'),
            onPressed: () => print("j'appuie sur le panier"),
          )
        ],
      ),
      backgroundColor: Colors.grey,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: constraints.maxHeight*0.35,
                    width: constraints.maxWidth,
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sneakers Category",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Product name",
                                style: Theme.of(context).textTheme.headline4.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Price",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                              ),
                              Text(
                                  "120 €",
                                style: Theme.of(context).textTheme.headline4.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: constraints.maxHeight * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 85.0, left: 25, right: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                    "En stock",
                                  style: TextStyle(
                                    color: kTextColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                  ),
                                )
                            ),
                            Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                                    child: DropdownButton(
                                      hint: Text(
                                        "sizes",
                                        style: TextStyle(
                                          color: kTextColor
                                        ),
                                      ),
                                      value: "36",
                                      underline: Container(),
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey,
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

                                      },
                                    )
                                )
                            )
                          ],
                        ),
                        SizedBox(height: 22,),
                        Text("Lorem Ipsum is slechts een proeftekst uit het drukkerij- en zetterijwezen. Lorem Ipsum is de standaard proeftekst in deze bedrijfstak sinds de 16e eeuw, toen een onbekende drukker een zethaak met letters nam en ze door elkaar husselde om een font-catalogus te maken. Het heeft niet alleen vijf eeuwen overleefd maar is ook, vrijwel onveranderd, overgenomen in elektronische letterzetting. Het is in de jaren '60 populair"),
                        SizedBox(height: 22,),
                        Row(
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
                                    )
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                                  "1",
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
                                      )
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              flex: 8,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)
                                ),
                                child: Text(
                                    "ADD TO CART",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                  ),
                                ),
                                color: Colors.grey,
                                onPressed: () => print("rien"),
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight * 0.6)*0.35,
                  left: constraints.maxWidth*0.35,
                  child: Image.asset(
                    'assets/images/black-shoe.png',
                    width: constraints.maxWidth/2,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
