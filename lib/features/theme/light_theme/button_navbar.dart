import 'package:flutter/material.dart';

import 'light_color_scheme.dart';

const bottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: lightGrey,
  selectedIconTheme: IconThemeData(color: white, size: 12),
  unselectedIconTheme: IconThemeData(color: darkGrey, size: 12),
  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
  selectedItemColor: white,
  unselectedItemColor: classicBlack,
  elevation: 40,
);
