import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

import '../../productappbar.dart';

class Shampoo extends StatefulWidget {
  const Shampoo({Key? key}) : super(key: key);

  @override
  State<Shampoo> createState() => _ShampooState();
}

var quantity = 1;
var price = 432; // Initial price for a quantity of 1

class _ShampooState extends State<Shampoo> {
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
              "images/personalcare/foaming_cleaner-removebg-preview (1).png",
              height: 250,
            ),
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
                      Text("Shampoo",
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
                        ),
                      ),
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
                                if (quantity == 1) {
                                  // Quantity cannot be less than 1
                                  return;
                                } else {
                                  quantity--;
                                  price = 432 * quantity;
                                }
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
                            child: Text("$quantity"),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                                price = 432 * quantity;
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
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10),
            child: Center(
              child: Text(
                "•Richly indulgent anti-dandruff shampoo for dry, damaged or frizzy hair, Leaves hair up to 100% dandruff free;.\n"
                "•Richly indulgent anti-dandruff shampoo for dry, damaged or frizzy hair, \n "
                "•Hair Type: Frizzy Hair.\n "
                "•Target Audience: Men & Women\n",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  wordSpacing: 2,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.10),
                offset: Offset(0, 4),
                blurRadius: 10,
                spreadRadius: 0.7,
              ),
            ],
          ),
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
