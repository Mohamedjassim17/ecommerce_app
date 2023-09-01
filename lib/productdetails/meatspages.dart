import 'package:bpcl_project/navigations/meats/americansusage.dart';
import 'package:bpcl_project/navigations/meats/ashok%20masala.dart';
import 'package:bpcl_project/navigations/meats/chickerncurrrypage.dart';
import 'package:bpcl_project/navigations/meats/choppedham.dart';
import 'package:bpcl_project/navigations/meats/everestmasala.dart';
import 'package:bpcl_project/navigations/meats/gekipage.dart';
import 'package:bpcl_project/navigations/meats/itcchef.dart';
import 'package:bpcl_project/navigations/meats/kellychcicken.dart';
import 'package:bpcl_project/navigations/meats/meatsmasala.dart';
import 'package:bpcl_project/navigations/meats/muttoncutlet.dart';
import 'package:bpcl_project/navigations/meats/muttonjosh.dart';
import 'package:bpcl_project/navigations/meats/realchicken.dart';
import 'package:bpcl_project/navigations/meats/seekh%20kebab.dart';
import 'package:bpcl_project/navigations/meats/sumeruchicken.dart';
import 'package:bpcl_project/navigations/meats/veagonmeat.dart';
import 'package:flutter/material.dart';

class meats extends StatefulWidget {
  const meats({Key? key}) : super(key: key);

  @override
  State<meats> createState() => _meatsState();
}

class _meatsState extends State<meats> {
  List<String> images = [
    "images/meats/chickencurry_500gm-removebg-preview.png",
    "images/meats/treatmeat-removebg-preview.png",
    "images/meats/choopedham-removebg-preview.png",
    "images/meats/americanherbsasuage-removebg-preview.png",
    "images/meats/meatmasala-removebg-preview.png",
    "images/meats/everest masala.jpg",
    "images/meats/dog_eat-removebg-preview.png",
    "images/meats/kellychicken-removebg-preview.png",
    "images/meats/seekh_kebab-removebg-preview.png",
    "images/meats/meat_masal-removebg-preview.png",
    "images/meats/sumeru_chicken-removebg-preview.png",
    "images/meats/broast_chciken-removebg-preview.png",
    "images/meats/itcmasterchef-removebg-preview.png",
    "images/meats/hot__spicy-removebg-preview.png",
    "images/meats/61peUD9enBL._SX679_-removebg-preview.png"
  ];
  List<String> producttitle = [
    "Chicken curry",
    "Veagon meat",
    "Chopped ham",
    "American Sausage",
    "meats masala",
    "everest masala",
    " Real chicken Biscuit",
    "Kelly's chicken",
    "Seekh kebab",
    "Ashok meat masala",
    "Sumeru chicken",
    "ITC master chef",
    "Geki hot& spicy",
    "Mutton rogan josh",
    "Mutton cutlet",
  ];
  List<String> offer = [
    "20% Off",
    "14% Off",
    "12% Off",
    "30% Off",
    "90% Off",
    "6% Off",
    "30% Off",
    "47% Off",
    "29% Off",
    "2% Off",
    "29% Off",
    "70% Off",
    "80% Off",
    "5% Off",
    "70% Off",
  ];

  List<String> previousprice = [
    "935",
    "350",
    "1,200",
    "900",
    "200",
    "399",
    "598",
    "304",
    "402",
    "275",
    "432",
    "753",
    "1,395",
    "900",
    "700"
  ];

  List<String> originalprice = [
    "443",
    "299",
    "786",
    "583",
    "84",
    "43",
    "389",
    "303",
    "304",
    "20",
    "263",
    "409",
    "199",
    "450",
    "99"
  ];
  void naviagate1(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => chickenpage()));
  }

  void navigate2(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => veagonmeat()));
  }

  void navigation3(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => choppedham()));
  }

  void naviagtion4(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (c) => americansusage()));
  }

  void naviagtion5(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => meatsmasala()));
  }

  void navighation6(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => everestmasala()));
  }

  void navigation7(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => realchicken()));
  }

  void navigation8(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => kellychicken()));
  }

  void navigation9(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => seekhkebab()));
  }

  void navigation10(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => ashokmeat()));
  }

  void navigation11(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => sumeruchicken()));
  }

  void navigation12(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => itc()));
  }

  void navigation13(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => geki()));
  }

  void navigation14(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => muttonrosh()));
  }

  void navigation15(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (c) => mmuttoncutlet()));
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
