import 'package:flutter/material.dart';

class Thememanger with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  get thememode => _themeMode;

  tooglethemr(bool isdark) {
    _themeMode = isdark ? ThemeMode.dark : ThemeMode.light;
  }
}
