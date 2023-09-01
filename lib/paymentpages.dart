import 'package:bpcl_project/bottomnavigation.dart';
import 'package:bpcl_project/homepage.dart';
import 'package:flutter/material.dart';

class historypage extends StatefulWidget {
  const historypage({Key? key}) : super(key: key);

  @override
  State<historypage> createState() => _historypageState();
}

class _historypageState extends State<historypage> {
  final List<String> points = [
    "BPCL: Ecommerce app built with Flutter.",
    "Categories: Offers household, grocery items",
    "Data Management: JSON and Provider for state management.",
    "Local Storage: Securely stores user preferences and data using SharedPreferences.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade100,
        centerTitle: true,
        title: Text("About",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text("Description:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "BPCL is an ecommerce app developed using Flutter. It offers a diverse selection of categories, such as household and grocery items, delivering an intuitive online store experience. The app effectively manages data using JSON and employs the Provider package for state management. User preferences and vital data are securely stored locally with SharedPreferences. Navigation within the app is streamlined through the utilization of a hidden drawer menu.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify, // Added text alignment
            ),
          )
        ],
      ),
    );
  }
}
