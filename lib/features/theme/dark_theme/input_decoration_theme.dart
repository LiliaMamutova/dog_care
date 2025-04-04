import 'package:flutter/material.dart';

import 'dark_color_scheme.dart';

final inputDecorationTheme = InputDecorationTheme(
  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: darkGrey)),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: white),
  ),
);
