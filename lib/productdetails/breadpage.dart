import 'package:bpcl_project/navigations/bread&milk/amulpanner.dart';
import 'package:bpcl_project/navigations/bread&milk/browneggs.dart';
import 'package:bpcl_project/navigations/bread&milk/cookieman.dart';
import 'package:bpcl_project/navigations/bread&milk/fresheggs.dart';
import 'package:bpcl_project/navigations/bread&milk/healthyeggs.dart';
import 'package:bpcl_project/navigations/bread&milk/heritage.dart';
import 'package:bpcl_project/navigations/bread&milk/kattamutta.dart';
import 'package:bpcl_project/navigations/bread&milk/multiseed.dart';
import 'package:bpcl_project/navigations/bread&milk/nankahahthi.dart';
import 'package:bpcl_project/navigations/bread&milk/pannerphool.dart';
import 'package:bpcl_project/navigations/bread&milk/pistachiomilk.dart';
import 'package:bpcl_project/navigations/bread&milk/smoodh.dart';
import 'package:bpcl_project/navigations/bread&milk/soudoughbread.dart';
import 'package:bpcl_project/navigations/bread&milk/soyapanner.dart';
import 'package:bpcl_project/navigations/bread&milk/whoafree.dart';
import 'package:bpcl_project/navigations/household/heaterpage.dart';
import 'package:flutter/material.dart';

class bread extends StatefulWidget {
  const bread({Key? key}) : super(key: key);

  @override
  State<bread> createState() => _breadState();
}

class _breadState extends State<bread> {
  List<String> images = [
    "images/bakery/bread-removebg-preview.png",
    "images/bakery/multiseed-removebg-preview.png",
    "images/bakery/heritage_milk-removebg-preview.png",
    "images/bakery/smoodh_40paack-removebg-preview.png",
    "images/bakery/amul_panner-removebg-preview.png",
    "images/bakery/soya_panner-removebg-preview.png",
    "images/bakery/Fresh_eggs-removebg-preview.png",
    "images/bakery/brown_eggs-removebg-preview.png",
    "images/bakery/wheafree_breadmix-removebg-preview.png",
    "images/bakery/nankhhatai_cookies-removebg-preview.png",
    "images/bakery/cookieman-removebg-preview.png",
    "images/bakery/panner_phool-removebg-preview.png",
    "images/bakery/pistachio_milk-removebg-preview.png",
    "images/bakery/healthy_eggs-removebg-preview.png",
    "images/bakery/kadda_mutta-removebg-preview.png",
  ];
  List<String> producttitle = [
    "Soudough bread",
    "Multiseed bread",
    "Heritage Milk",
    "Smoodh (40 pack)",
    "Amul panner",
    "Soya Panner",
    "Fresh eggs",
    "Brown eggs",
    "Wheafree breadmix",
    "Nankahathi Cookies",
    "Cookieman",
    "Panner Phool",
    "Pistachio milk",
    "Healthy eggs",
    "Katta Mutta"
  ];
  List<String> offer = [
    "28% Off",
    "20% Off",
    "40% Off",
    "70% Off",
    "10% Off",
    "8% Off",
    "15% Off",
    "20% Off",
    "2% Off",
    "16% Off",
    "50% Off",
    "12% Off",
    "39% Off",
    "29% Off",
    "70% Off",
  ];

  List<String> previousprice = [
    "300",
    "192",
    "299",
    "399",
    "80",
    "362",
    "494",
    "183",
    "364",
    "496",
    "1,781",
    "863",
    "530",
    "792",
    "204"
  ];

  List<String> originalprice = [
    "199",
    "84",
    "399",
    "601",
    "69",
    "239",
    "429",
    "243",
    "179",
    "313",
    "374",
    "1,299",
    "599",
    "492",
    "620",
  ];
  void naviagate1(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => soudough()));
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => multiseed()));
  }

  void navigation3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => heritage()));
  }

  void naviagtion4(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => smoodh()));
  }

  void naviagtion5(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => amulpanner()));
  }

  void navighation6(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => soyapanner()));
  }

  void navigation7(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => fresheggs()));
  }

  void navigation8(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => browneggs()));
  }

  void navigation9(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => wheafree()));
  }

  void navigation10(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => nankahathi()));
  }

  void navigation11(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => cookieman()));
  }

  void navigation12(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => pannerphool()));
  }

  void navigation13(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => pistachiomilk()));
  }

  void navigation14(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => healthyeggs()));
  }

  void navigation15(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => kuttamutta()));
  }

  @override
  Widget build(BuildContext context) {
    List<Function(BuildContext)> navigation = [
      naviagate1,
      navigate2,
      navigation3,
      naviagtion4,
      naviagtion5,
      navighation6,
      navigation7,
      navigation8,
      navigation9,
      navigation10,
      navigation11,
      navigation12,
      navigation13,
      navigation14,
      navigation15
    ];
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
                        padding: const EdgeInsets.only(left: 5),
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
