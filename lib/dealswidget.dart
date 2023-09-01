import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarouselSliderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: AnotherCarousel(
            images: [
              AssetImage("image/img.jpg"),
              AssetImage("image/img_1.jpg"),
              AssetImage("image/img_2.png"),
              // we have display image from netwrok as well
            ],
            dotSize: 6,
            indicatorBgPadding: 5.0,
          ),
        )
      ],
    ));
  }
}
