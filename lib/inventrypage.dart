import 'package:bpcl_project/bottomnavigation.dart';
import 'package:flutter/material.dart';

class inventrypage extends StatefulWidget {
  const inventrypage({Key? key}) : super(key: key);

  @override
  State<inventrypage> createState() => _inventrypageState();
}

class _inventrypageState extends State<inventrypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      bottomNavigationBar: bottompage(),
    );
  }
}
