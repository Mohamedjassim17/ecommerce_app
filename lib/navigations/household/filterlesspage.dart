import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

import '../../productappbar.dart';

class filterlesspage extends StatefulWidget {
  const filterlesspage({Key? key}) : super(key: key);

  @override
  State<filterlesspage> createState() => _filterlesspageState();
}

var price = 7999;
var text = 1;

class _filterlesspageState extends State<filterlesspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          productappbar(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
                "images/household/filterless-removebg-preview.png",
                height: 250),
          ),
          Container(
            height: 90,
            color: Colors.white24,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Filterless",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: LikeButton(
                            size: 35,
                            likeCount: 89,
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 3.5,
                          itemCount: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          itemBuilder: (context, _) =>
                              Icon(Icons.star, color: Colors.orange.shade700),
                          onRatingUpdate: (index) {},
                        ),
                        Spacer(),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                if (text == 1) {
                                  return;
                                } else
                                  text--;
                                price = 7999 * text;
                              });
                            },
                            fillColor: Colors.white54,
                            shape: CircleBorder(),
                            child: Icon(Icons.remove),
                          ),
                        ),
                        SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            child: Text("$text"),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                text++;
                                price = 7999 * text;
                              });
                            },
                            fillColor: Colors.white54,
                            shape: CircleBorder(),
                            child: Row(
                              children: [Icon(Icons.add)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Highlights",
              selectionColor: Colors.red,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Center(
              child: Text(
                "•It comes with motion sensing technology that enables easy operation by a simple wave of your hand\n"
                "•Warranty by Elica: Lifetime (15 years) on Motor and 2 years comprehensive if purchased after 1st March 2023\n"
                "•Type: Curved Glass, Wall Mounted | Colour: Black\n "
                "Included Components: Product,Warranty free\n",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500, wordSpacing: 2),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(color: Colors.grey.shade200, boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.10),
              offset: Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 0.7)
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Price',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('₹$price',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
