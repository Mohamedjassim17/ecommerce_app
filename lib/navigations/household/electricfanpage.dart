import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

import '../../productappbar.dart';

class electricfanpage extends StatefulWidget {
  const electricfanpage({Key? key}) : super(key: key);

  @override
  State<electricfanpage> createState() => _electricfanpageState();
}

var text = 1;
var prices = 2999;

class _electricfanpageState extends State<electricfanpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          productappbar(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("images/household/fan-removebg-preview.png",
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
                      Text("Electric fan",
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
                                if (1 == text) {
                                  return;
                                } else
                                  prices = 2999 * text;
                                text--;
                              });
                            },
                            fillColor: Colors.white,
                            shape: CircleBorder(),
                            child: Icon(Icons.remove, color: Colors.black),
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
                                prices = 2999 * text;
                              });
                            },
                            fillColor: Colors.white,
                            shape: CircleBorder(),
                            child: Row(
                              children: [Icon(Icons.add, color: Colors.black)],
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
                "•Enjoy powerful breeze with Crompton HighSpeed Torpedo Pedestal Fans\n;•Best-In-Class Performance of 2100 RPM high speed and air delivery of 105 CMM.\n •Number of Speed Settings: 3Attractive Colours to suit every type of interiors\n;•Wide Oscillation\nTilting mechanism, 100% copper windingSturdy Base and Thermal Overload Protection for safety and durability;Sweep Size = 400 mm; Speed = 2100 RPM; Air Delivery = 105 CMM; Input Power = 125WWarranty"
                "2 years warranty provided by Crompton from date of purchase.\n•Installation is not provided by brand.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
              child: Text('₹$prices',
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
