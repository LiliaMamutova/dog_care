import 'package:dog_care/features/theme/dark_theme/app_bar.dart';
import 'package:dog_care/features/theme/dark_theme/button_navbar.dart';
import 'package:dog_care/features/theme/dark_theme/buttons_theme.dart';
import 'package:dog_care/features/theme/dark_theme/input_decoration_theme.dart';
import 'package:dog_care/features/theme/dark_theme/switch_theme.dart';
import 'package:flutter/material.dart';

import 'dark_color_scheme.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: colorScheme,
  primaryColor: classicRed,
  hintColor: darkGrey,
  appBarTheme: appBarTheme,
  switchTheme: switchTheme,
  textButtonTheme: textButtonTheme,
  outlinedButtonTheme: outlineButtonTheme,
  inputDecorationTheme: inputDecorationTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  bottomNavigationBarTheme: bottomNavigationBarTheme,
);
