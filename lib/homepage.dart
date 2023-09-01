import 'package:bpcl_project/appbarpage.dart';
import 'package:bpcl_project/bottomnavigation.dart';
import 'package:bpcl_project/dealswidget.dart';
import 'package:bpcl_project/imageswidgrt.dart';
import 'package:bpcl_project/navigations/meats/kellychcicken.dart';
import 'package:bpcl_project/paymentpages.dart';
import 'package:bpcl_project/settings.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';
import 'inventrypage.dart';
import 'main.dart';
import 'navigationscreen.dart';
import 'orderpage.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int selectindex = 0;
  PageController pageController = PageController();
  TextEditingController searchcontroller = TextEditingController();
  String _inputText = '';

  @override
  void dispose() {
    searchcontroller.dispose();
    super.dispose();
  }

  List<Widget> pages = [
    homepage(),
    historypage(),
    homepage() //instead put cartscreen
  ];

  @override
  Widget build(BuildContext context) {
    final themeproviders = Provider.of<themeprovider>(context);

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.orange.shade200,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: DrawerHeader(
                  child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image.asset("images/4605067.png",
                          height: 100, width: 100),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "B P C L",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              )),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Homepage",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => homepage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(
                "Paymentpage",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => historypage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => settings()));
              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.orange.shade200,
        title: Text("Bpcl",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        shadowColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.local_gas_station_sharp),
              color: Colors.black),
        ],
        centerTitle: true,
      ),
      extendBody: true,
      backgroundColor: themeproviders.isDarkMode
          ? Colors.black // Customize the dark mode app bar color
          : Colors.grey.shade300,
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.orange.shade200,
              borderRadius: BorderRadius.circular(80)),
          height: 65,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => homepage()));
                      },
                      icon: Icon(Icons.home)),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => historypage()));
                    },
                    icon: Icon(Icons.info),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => settings()));
                      },
                      icon: Icon(Icons.settings)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Home",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("About",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("Settings",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],
          )),
      body: ListView(
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
      ),

      //bottom naviagtion bar
    );
  }
}
