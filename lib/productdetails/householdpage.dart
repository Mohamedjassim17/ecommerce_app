import 'dart:math';

import 'package:bpcl_project/navigations/household/3pinpage.dart';
import 'package:bpcl_project/navigations/household/boulmixerpage.dart';
import 'package:bpcl_project/navigations/household/duracellpage.dart';
import 'package:bpcl_project/navigations/household/electricfanpage.dart';
import 'package:bpcl_project/navigations/household/electrickettle.dart';
import 'package:bpcl_project/navigations/household/filterlesspage.dart';
import 'package:bpcl_project/navigations/household/heaterpage.dart';
import 'package:bpcl_project/navigations/household/mixerpage.dart';
import 'package:bpcl_project/navigations/household/mosqutiopaghe.dart';
import 'package:bpcl_project/navigations/household/roastpage.dart';
import 'package:bpcl_project/navigations/household/sandwichmakerpage.dart';
import 'package:bpcl_project/navigations/household/scrubberpage.dart';
import 'package:bpcl_project/navigations/household/storagebox.dart';
import 'package:bpcl_project/navigations/household/sweingpage.dart';
import 'package:bpcl_project/navigations/household/toastypage.dart';
import 'package:flutter/material.dart';

class household extends StatefulWidget {
  final String searchQuery = "";
  const household({Key? key, required String searchQuery}) : super(key: key);

  @override
  State<household> createState() => _householdState();
}

class _householdState extends State<household> {
  List<String> images = [
    'images/roastmachine-removebg-preview.png',
    'images/household/kettle-removebg-preview.png',
    'images/household/boulmixer-removebg-preview.png',
    'images/household/sandwichmaker-removebg-preview.png',
    'images/household/fan-removebg-preview.png',
    'images/household/3pin-removebg-preview.png',
    'images/household/heater-removebg-preview.png',
    'images/household/mixer-removebg-preview.png',
    'images/household/sweingmachine-removebg-preview.png',
    'images/household/scrubber-removebg-preview.png',
    'images/household/filterless-removebg-preview.png',
    'images/household/storagebox-removebg-preview.png',
    'images/household/toastymachine-removebg-preview.png',
    'images/household/mosquitokiller-removebg-preview.png',
    'images/household/duracell-removebg-preview.png'
  ];
  List<String> producttitle = [
    "Roast maker",
    "Electric kettle",
    "Boul mixer",
    "Sandwich maker",
    "Electric-fan",
    "3-pin plug",
    "Heater",
    "Mixer",
    "Sweing machine",
    "Scrubber",
    "Filterless",
    "Storagebox",
    "Toasty machine",
    "Mosquito Killer",
    "Duracell battery"
  ];
  List<String> offer = [
    "28% Off",
    "40% Off",
    "70% Off",
    "50% Off",
    "10% Off",
    "39% Off",
    "45% Off",
    "47% Off",
    "10% Off",
    "1% Off",
    "29% Off",
    "40% Off",
    "25% Off",
    "5% Off",
    "7% Off",
  ];

  List<String> previousprice = [
    "1,795",
    "1,946",
    "2,283",
    "2,975",
    "3,995",
    "566",
    "10,400",
    "4,239",
    "12,500",
    "275",
    "15,999",
    "2,200",
    "7,395",
    "500",
    "700"
  ];

  List<String> originalprice = [
    "1,299",
    "999",
    "786",
    "1,553",
    "2,889",
    "399",
    "6,249",
    "2,999",
    "9,999",
    "245",
    "8,888",
    "1,100",
    "3,999",
    "450",
    "582"
  ];
  void naviagateroast(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => roastpage()));
  }

  void navigatekettle(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => electrickettlepage()));
  }

  void navigationboulmxr(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => boulmakerpage()));
  }

  void naviagtionsandwich(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => sandwichmakerpage()));
  }

  void naviagtionfan(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => electricfanpage()));
  }

  void navighation3pin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => pinpage()));
  }

  void navigationheater(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => heaterpage()));
  }

  void navigationmixer(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => mixerpage()));
  }

  void navigationsweing(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => sweingpage()));
  }

  void navigationscrubber(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => scrubberpage()));
  }

  void navigationfilter(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => filterlesspage()));
  }

  void navigationstorage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => storagepage()));
  }

  void navigationtoast(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => toastypage()));
  }

  void navigationmosquito(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => mosquitopage()));
  }

  void navigationbattery(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => batterypage()));
  }

  @override
  Widget build(BuildContext context) {
    List<Function(BuildContext)> navigation = [
      naviagateroast,
      navigatekettle,
      navigationboulmxr,
      naviagtionsandwich,
      naviagtionfan,
      navighation3pin,
      navigationheater,
      navigationmixer,
      navigationsweing,
      navigationscrubber,
      navigationfilter,
      navigationstorage,
      navigationtoast,
      navigationmosquito,
      navigationbattery
    ];
    List<int> matchingIndices = [];
    List<int> nonMatchingIndices = [];
    for (int i = 0; i < producttitle.length; i++) {
      if (producttitle[i]
          .toLowerCase()
          .contains(widget.searchQuery.toLowerCase())) {
        matchingIndices.add(i);
      } else {
        nonMatchingIndices.add(i);
      }
    }

    List<int> sortedIndices = [...matchingIndices, ...nonMatchingIndices];
    return GridView.count(
      shrinkWrap: true,
      childAspectRatio: 0.72,
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 0; i < 15; i++)
          Container(
            margin: EdgeInsets.only(
              top: 15,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    navigation[i](context);
                  },
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(images[i], height: 120, width: 120),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(producttitle[i],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: Row(
                    children: [
                      Text(offer[i],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.orange[700],
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(previousprice[i],
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 12)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          "₹${originalprice[i]}",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: Row(
                    children: [
                      Text(
                        "Free delivery",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.shopping_cart, color: Colors.red)
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
