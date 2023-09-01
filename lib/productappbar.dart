import 'package:flutter/material.dart';

class productappbar extends StatefulWidget {
  const productappbar({Key? key}) : super(key: key);

  @override
  State<productappbar> createState() => _productappbarState();
}

class _productappbarState extends State<productappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 40,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Product details",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
