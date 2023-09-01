import 'package:bpcl_project/navigations/grocerys/cashews.dart';
import 'package:bpcl_project/navigations/grocerys/colligate.dart';
import 'package:bpcl_project/navigations/grocerys/dark%20fanatsy.dart';
import 'package:bpcl_project/navigations/grocerys/disano%20happy.dart';
import 'package:bpcl_project/navigations/grocerys/exo.dart';
import 'package:bpcl_project/navigations/grocerys/fortune%20sunflower.dart';
import 'package:bpcl_project/navigations/grocerys/glucon.dart';
import 'package:bpcl_project/navigations/grocerys/hotchips.dart';
import 'package:bpcl_project/navigations/grocerys/kellogs%20chocos.dart';
import 'package:bpcl_project/navigations/grocerys/maggi.dart';
import 'package:bpcl_project/navigations/grocerys/oats%20museli.dart';
import 'package:bpcl_project/navigations/grocerys/tide.dart';
import 'package:bpcl_project/navigations/meats/kellychcicken.dart';
import 'package:flutter/material.dart';

import '../navigations/grocerys/aashrivaad.dart';
import '../navigations/grocerys/oreo.dart';
import '../navigations/grocerys/vim.dart';

class grocery extends StatefulWidget {
  const grocery({Key? key}) : super(key: key);

  @override
  State<grocery> createState() => _groceryState();
}

class _groceryState extends State<grocery> {
  List<String> images = [
    "images/grocery/aashirvaad-removebg-preview.png",
    "images/grocery/maggic-removebg-preview.png",
    "images/grocery/exo-removebg-preview.png",
    "images/grocery/Cashews-removebg-preview.png",
    "images/grocery/disano_honey-removebg-preview.png",
    "images/grocery/oats_muesli-removebg-preview.png",
    "images/grocery/tide-removebg-preview.png",
    "images/grocery/colgate-removebg-preview.png",
    "images/grocery/oreo-removebg-preview.png",
    "images/grocery/glucon-d-removebg-preview.png",
    "images/grocery/vim-removebg-preview.png",
    "images/grocery/fortune_sunflower-removebg-preview.png",
    "images/grocery/kellogs_chocos-removebg-preview.png",
    "images/grocery/hot_chips-removebg-preview.png",
    "images/grocery/dark_fantasy-removebg-preview.png",
  ];
  List<String> producttitle = [
    "Aashrivaad",
    "Maggi",
    "Exo",
    "Cashews",
    "Disano honey",
    "Oats muesli",
    "Tide",
    "Colgate",
    "Oreo",
    "Glucon-d",
    "Vim",
    "Fortune sunflower",
    "Kellog's chocos",
    "Hot chips",
    "Dark fantasy"
  ];
  List<String> offer = [
    "40% Off",
    "8% Off",
    "25% Off",
    "30% Off",
    "24% Off",
    "50% Off",
    "52% Off",
    "2% Off",
    "40% Off",
    "9% Off",
    "17% Off",
    "7% Off",
    "38% Off",
    "10% Off",
    "3% Off"
  ];

  List<String> previousprice = [
    "450",
    "204",
    "79",
    "1,200",
    "129",
    "799",
    "1,200",
    "973",
    "266",
    "499",
    "340",
    "510",
    "399",
    "455",
    "230"
  ];

  List<String> originalprice = [
    "370",
    "129",
    "49",
    "890",
    "99",
    "358",
    "799",
    "129",
    "89",
    "399",
    "189",
    "420",
    "179",
    "299",
    "99"
  ];
  void naviagate1(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => ashrivaad()));
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => maggic()));
  }

  void navigation3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => exo()));
  }

  void naviagtion4(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => cashews()));
  }

  void naviagtion5(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => disanohappy()));
  }

  void navighation6(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => oatsmuseli()));
  }

  void navigation7(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => tide()));
  }

  void navigation8(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => colagate()));
  }

  void navigation9(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => oreo()));
  }

  void navigation10(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => glucon()));
  }

  void navigation11(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => vim()));
  }

  void navigation12(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => fortunesunflower()));
  }

  void navigation13(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => kellogschocs()));
  }

  void navigation14(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => hotchips()));
  }

  void navigation15(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => darkfanatsy()));
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
