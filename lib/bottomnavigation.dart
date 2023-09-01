import 'package:bpcl_project/homepage.dart';
import 'package:bpcl_project/inventrypage.dart';
import 'package:bpcl_project/orderpage.dart';
import 'package:bpcl_project/paymentpages.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class bottompage extends StatefulWidget {
  const bottompage({Key? key}) : super(key: key);

  @override
  State<bottompage> createState() => _bottompageState();
}

class _bottompageState extends State<bottompage> {
  List<Widget> pages = [homepage(), historypage(), homepage()];

  @override
  Widget build(BuildContext context) {
    int seleectedindex = 0;
    return Scaffold(
      body: IndexedStack(
        children: pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.orange,
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.grey.shade300,
        items: [
          Icon(Icons.home),
          Icon(Icons.monetization_on),
          Icon(Icons.shopping_cart)
        ],
        onTap: (index) {
          setState(() {
            seleectedindex = index;
          });
        },
      ),
    );
  }
}
