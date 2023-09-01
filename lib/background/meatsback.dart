import 'package:flutter/material.dart';

import '../productdetails/meatspages.dart';

class meatsback extends StatefulWidget {
  const meatsback({Key? key}) : super(key: key);

  @override
  State<meatsback> createState() => _meatsbackState();
}

class _meatsbackState extends State<meatsback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text(
            "Meats",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orange.shade600,
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Icon(Icons.search),
                              ),
                              Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Search...",
                                            border: InputBorder.none)),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                meats()
              ],
            ),
          ],
        ));
  }
}
