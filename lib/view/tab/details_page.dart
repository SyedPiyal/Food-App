import 'package:donut/view/tab/ingredients_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required this.donutFlavor,
    required this.sugar,
    required this.salt,
    required this.fat,
    required this.energy,
    required this.donutDetails,
  });

  final String donutFlavor;
  final String imageName;
  final String donutDetails;
  final String donutPrice;
  final List sugar;
  final List salt;
  final List fat;
  final List energy;
  final donutColor;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    String donutPrice = widget.donutPrice;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            widget.donutFlavor,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          centerTitle: true,
          backgroundColor: widget.donutColor[50],
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.arrow_left,
                color: Colors.grey[700],
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: widget.donutColor[50],
              child: Padding(
                padding: const EdgeInsets.all(46.0),
                child: Image.asset(widget.imageName),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    height: constraints.maxHeight / 1.9,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // ingredients label
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 12.0, left: 23, bottom: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ingredients',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // nutritional value
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IngredientItem(
                                  title: 'Sugar',
                                  percentageColor: Colors.blue[100],
                                  grams: widget.sugar[0],
                                  percentage: widget.sugar[1],
                                ),
                                IngredientItem(
                                  title: 'Salt',
                                  percentageColor: Colors.pink[50],
                                  grams: widget.salt[0],
                                  percentage: widget.salt[1],
                                ),
                                IngredientItem(

                                  title: 'Fat',
                                  percentageColor: Colors.orange[50],
                                  grams: widget.fat[0],
                                  percentage: widget.fat[1],
                                ),
                                IngredientItem(
                                  title: 'Energy',
                                  grams: widget.energy[0],
                                  percentage: widget.energy[1], percentageColor: Colors.red[50],
                                ),
                              ],
                            ),
                            // details
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0,
                                      left: 23,
                                      bottom: 12.0,
                                      right: 23.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Details',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        widget.donutDetails,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // add to cart
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 23.0, right: 23.0),
                              child: Container(
                                height: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black54,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '\$ $donutPrice',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Delivery Not Included',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Add To Cart',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[800],
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
