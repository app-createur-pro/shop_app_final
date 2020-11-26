
import 'package:flutter/material.dart';

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
                                child: Text("en stock")
                            ),
                            Expanded(
                                child: DropdownButton()
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
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey
                                  ),
                                  shape: BoxShape.circle
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    size: 15,
                                  )
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
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey
                                    ),
                                    shape: BoxShape.circle
                                ),
                                child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      size: 15,
                                    )
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
                                    "bouton",
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
