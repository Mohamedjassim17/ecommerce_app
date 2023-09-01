import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'navigationscreen.dart';

class homeappbar extends StatefulWidget {
  const homeappbar({Key? key}) : super(key: key);

  @override
  State<homeappbar> createState() => _homeappbarState();
}

class _homeappbarState extends State<homeappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Bpcl",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Icon(Icons.notifications, size: 30)
        ],
      ),
    );
  }
}
