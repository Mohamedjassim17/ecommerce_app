import 'package:bpcl_project/appbarpage.dart';
import 'package:bpcl_project/homepage.dart';
import 'package:bpcl_project/imageswidgrt.dart';
import 'package:flutter/material.dart';

class house extends StatefulWidget {
  const house({Key? key}) : super(key: key);

  @override
  State<house> createState() => _houseState();
}

class _houseState extends State<house> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 50,
                color: Colors.transparent,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Household",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 10,
                decoration: BoxDecoration(color: Colors.white60),
              ),
            ),
            Column(
              children: [],
            )
          ],
        ));
  }
}
