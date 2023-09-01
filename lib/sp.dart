import 'package:bpcl_project/main.dart';
import 'package:flutter/material.dart';

class example extends StatefulWidget {
  const example({Key? key}) : super(key: key);

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  bool darksmode = false;
  void toogle(value) {
    setState(() {
      darksmode = value;
    });
    if (darksmode) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
