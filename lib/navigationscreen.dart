import 'package:bpcl_project/homepage.dart';
import 'package:bpcl_project/orderpage.dart';
import 'package:bpcl_project/paymentpages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'dart:ui';

class navigationscreen extends StatefulWidget {
  const navigationscreen({Key? key}) : super(key: key);

  @override
  State<navigationscreen> createState() => _navigationscreenState();
}

class _navigationscreenState extends State<navigationscreen> {
  final style =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  List<ScreenHiddenDrawer> pages = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Homepage",
          baseStyle: style,
          colorLineSelected: Colors.orange,
          selectedStyle: TextStyle(),
        ),
        homepage(),
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Paymentpage",
            baseStyle: style,
            selectedStyle: TextStyle(),
          ),
          historypage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "Shopping cart",
            baseStyle: style,
            selectedStyle: TextStyle(),
          ),
          homepage() //instead put this cart page
          )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      slidePercent: 50,
      screens: pages,
      backgroundColorMenu: Colors.orange.shade300,
    );
  }
}
