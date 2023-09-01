import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

import '../../productappbar.dart';

class removalrazer extends StatefulWidget {
  const removalrazer({Key? key}) : super(key: key);

  @override
  State<removalrazer> createState() => _removalrazerState();
}

var price = 171;
var text = 1;

class _removalrazerState extends State<removalrazer> {
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
                "images/personalcare/removal_razor-removebg-preview.png",
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
                      Text("Removal razor",
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
                                price = text * 171;
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
                                price = 171 * text;
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
                "•The water-activated RIBBON OF MOISTURE around the blade protects and nourishes the skin.\n"
                "•FLEXIBALL HANDLE pivots in 4 directions for a seamless shave.\n "
                "•MICROFINE MICROFINE COMB guides hair to the blades that capture.\n "
                "•5 of our THINNEST BLADES for a long lasting smoothness\n",
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
          )),
    );
  }
}
