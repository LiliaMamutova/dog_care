import 'package:flutter/material.dart';

import 'dark_color_scheme.dart';

const bottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: darkGrey,
  selectedIconTheme: IconThemeData(color: whiteGrey, size: 12),
  unselectedIconTheme: IconThemeData(color: classicBlack, size: 12),
  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
  selectedItemColor: whiteGrey,
  unselectedItemColor: classicBlack,
  elevation: 40,
);
