import 'dart:ffi';

import 'package:bpcl_project/background/breadsback.dart';
import 'package:bpcl_project/background/grocerysback.dart';
import 'package:bpcl_project/background/househldback.dart';
import 'package:bpcl_project/background/meatsback.dart';
import 'package:bpcl_project/background/personalcareback.dart';
import 'package:bpcl_project/json/bread..dart';
import 'package:bpcl_project/json/groceryjson.dart';
import 'package:bpcl_project/json/jsonpersnonal.dart';
import 'package:bpcl_project/json/meatsjson.dart';
import 'package:bpcl_project/orderpage.dart';
import 'package:bpcl_project/productdetails/breadpage.dart';
import 'package:bpcl_project/productdetails/grocery.dart';
import 'package:bpcl_project/productdetails/householdpage.dart';
import 'package:bpcl_project/productdetails/housepage.dart';
import 'package:bpcl_project/productdetails/meatspages.dart';
import 'package:bpcl_project/productdetails/personalcare.dart';
import 'package:flutter/material.dart';

import 'json/jsonhousehold.dart';

class imageswidget extends StatefulWidget {
  const imageswidget({Key? key}) : super(key: key);

  @override
  State<imageswidget> createState() => _imageswidgetState();
}

class _imageswidgetState extends State<imageswidget> {
  List<String> image = [
    'images/household.png',
    'images/meats.png',
    'images/breadss-transformed-removebg-preview.png',
    'images/grocerys.webp',
    'images/personalcare-removebg-preview (1).png',
  ];

  List<String> prodecttitle = [
    "Household",
    "Meats",
    "Beard& milk",
    "Grocerys",
    "Personlcare"
  ];

  List<String> description = [
    "Bedsheet,Broom,ToiletPaper,|Under ₹200",
    "Chicken,Goats,Duck, |Under ₹500",
    "Eggs,Breads,Milk, |Under ₹100",
    "Rice,Wheat,Maggi, |Under ₹150",
    "Facewash,Toothbrush,Shampoo,|Under 200"
  ];
  void naviagatehoushold(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => search()));
  }

  void naviagatemeats(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => MeatsJson()));
  }

  void naviagatebread(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => BreadJson()));
  }

  void naviagategrocerys(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => GroceryJson()));
  }

  void naviagatepersonalcare(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => PersonalCareJson()));
  }

  @override
  Widget build(BuildContext context) {
    List<Function(BuildContext)> navigation = [
      naviagatehoushold,
      naviagatemeats,
      naviagatebread,
      naviagategrocerys,
      naviagatepersonalcare
    ];

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.72,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 0; i < 5; i++)
          Container(
            margin: EdgeInsets.only(
              top: 10,
              left: 5,
              right: 5,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    navigation[i](context);

                    /// photo click details infrom
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      image[i],
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(prodecttitle[i],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(description[i],
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
