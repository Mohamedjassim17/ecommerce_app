import 'package:bpcl_project/navigations/personalcare/dentaltools.dart';
import 'package:bpcl_project/navigations/personalcare/dettolhandwash.dart';
import 'package:bpcl_project/navigations/personalcare/dettolsoap.dart';
import 'package:bpcl_project/navigations/personalcare/fashwash.dart';
import 'package:bpcl_project/navigations/personalcare/grooming.dart';
import 'package:bpcl_project/navigations/personalcare/hairdryer.dart';
import 'package:bpcl_project/navigations/personalcare/multipurpose.dart';
import 'package:bpcl_project/navigations/personalcare/nailercutter.dart';
import 'package:bpcl_project/navigations/personalcare/removalrazer.dart';
import 'package:bpcl_project/navigations/personalcare/shampoo.dart';
import 'package:bpcl_project/navigations/personalcare/sportsshoes.dart';
import 'package:bpcl_project/navigations/personalcare/sungaless.dart';
import 'package:bpcl_project/navigations/personalcare/trimmer.dart';
import 'package:bpcl_project/navigations/personalcare/weighting.dart';
import 'package:flutter/material.dart';

import '../navigations/personalcare/foaming.dart';

class personalcare extends StatefulWidget {
  const personalcare({Key? key}) : super(key: key);

  @override
  State<personalcare> createState() => _personalcareState();
}

class _personalcareState extends State<personalcare> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/personalcare/foaming_cleaner-removebg-preview (1).png",
      "images/personalcare/grooming_scrissor-removebg-preview.png",
      "images/personalcare/grimmer-removebg-preview.png",
      "images/personalcare/weighting_scale-removebg-preview.png",
      "images/personalcare/hair_dryer-removebg-preview.png",
      "images/personalcare/removal_razor-removebg-preview.png",
      "images/personalcare/multi_purposebag-removebg-preview.png",
      "images/personalcare/dettolhandwash-removebg-preview.png",
      "images/personalcare/dental_tools-removebg-preview.png",
      "images/personalcare/nail_cutter-removebg-preview.png",
      "images/personalcare/polarized_sunglasses-removebg-preview.png",
      "images/personalcare/head_and_shoulders_shampoo-removebg-preview.png",
      "images/personalcare/detol_soap-removebg-preview.png",
      "images/personalcare/shoes-removebg-preview (1).png",
      "images/personalcare/fash_wash-removebg-preview.png",
    ];
    List<String> producttitle = [
      "Foaming Facebath",
      "Grooming scrissor",
      "Trimmer All-in-one",
      "Weighting Scale",
      "Hair dryer",
      "Removal razer",
      "Multi purposebag",
      "Dettol handwash",
      "Dental tools",
      "Nailer cutter",
      "polarized Sunglasses",
      "shampoo",
      "Dettol soap",
      "Sports shoes",
      'Face wash'
    ];
    List<String> offer = [
      "20% Off",
      "45% Off",
      "70% Off",
      "22% Off",
      "15% Off",
      "79% Off",
      "3% Off",
      "40% Off",
      "60% Off",
      "4% Off",
      "3% Off",
      "50% Off",
      "3% Off",
      '2% Off',
      "90% Off"
    ];

    List<String> previousprice = [
      "549",
      "439",
      "2,500",
      "1,390",
      "2,975",
      "699",
      "299",
      "601",
      "707",
      "290",
      "999",
      "1,083",
      "321",
      "1,000",
      "2,000"
    ];

    List<String> originalprice = [
      "429",
      "229",
      "1,600",
      "821",
      "1,999",
      "171",
      "99",
      "182",
      "404",
      "55",
      "899",
      "432",
      "111",
      "991",
      "199"
    ];
    void naviagate1(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => foaming()));
    }

    void navigate2(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => grooming()));
    }

    void navigation3(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => trimmer()));
    }

    void naviagtion4(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => weighting()));
    }

    void naviagtion5(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => hairdryer()));
    }

    void navighation6(BuildContext context) {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => removalrazer()));
    }

    void navigation7(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => multibage()));
    }

    void navigation8(BuildContext context) {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => dettolhandwash()));
    }

    void navigation9(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => dentaltools()));
    }

    void navigation10(BuildContext context) {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => nailercutter()));
    }

    void navigation11(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => sunglasses()));
    }

    void navigation12(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => Shampoo()));
    }

    void navigation13(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => dettolsoap()));
    }

    void navigation14(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => sportsshoes()));
    }

    void navigation15(BuildContext context) {
      Navigator.push(context, MaterialPageRoute(builder: (c) => facewash()));
    }

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
