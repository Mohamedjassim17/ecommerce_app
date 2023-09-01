import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'imageswidgrt.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
              decoration: BoxDecoration(
            color: Colors.white,
          )),
        ),
        Column(
          children: [
            // this is for text images
            Container(
              margin: EdgeInsets.only(top: 15, left: 5),
              alignment: Alignment.centerLeft,
              child: Text(
                "Best Deals",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.orange[700]),
              ),
            ),

            /// this for image slider using carusteol slider
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      // the height of the image mover
                      height: 220,
                      width: double.infinity,
                      child: AnotherCarousel(
                          images: [
                            Image.asset(
                              "images/img.png",
                            ),
                            Image.asset("images/img_1.png"),
                            Image.asset("images/img_2.png")
                          ],
                          dotSize: 10,
                          dotColor: Colors.orange,
                          indicatorBgPadding: 3,
                          noRadiusForIndicator: true,
                          dotBgColor: Colors.transparent),
                    )),
              ],
            ),
          ],
        ),

        /// text of the offer
        SizedBox(height: 15),
        Container(
          margin: EdgeInsets.only(left: 5),
          alignment: Alignment.topLeft,
          child: Text(
            "Starting ₹50 | Up 60% Off",
            style: TextStyle(
                color: Colors.orange[700],
                fontWeight: FontWeight.bold,
                fontSize: 23),
          ),
        ),
        imageswidget(),
      ],
    );
  }
}
