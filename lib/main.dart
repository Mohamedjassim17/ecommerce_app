import 'package:bpcl_project/homepage.dart';
import 'package:bpcl_project/navigationscreen.dart';
import 'package:bpcl_project/settings.dart';
import 'package:bpcl_project/sign_up.dart';
import 'package:bpcl_project/sp.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'json/jsonhousehold.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (c) => themeprovider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<themeprovider>(context).isDarkMode
            ? ThemeMode.dark
            : ThemeMode.light,
        home: textfield());
  }
}

class themeprovider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleDarkMode() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
