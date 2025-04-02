
import 'package:dog_care/features/theme/light_theme/button_navbar.dart';
import 'package:dog_care/features/theme/light_theme/app_bar.dart';
import 'package:dog_care/features/theme/light_theme/input_decoration_theme.dart';
import 'package:dog_care/features/theme/light_theme/switch_theme.dart';
import 'package:flutter/material.dart';

import '../light_theme/buttons_theme.dart';
import 'light_color_scheme.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: colorScheme,
  primaryColor: classicRed,
  hintColor: white,
  appBarTheme: appBarTheme,
  switchTheme: switchTheme,
  textButtonTheme: textButtonTheme,
  outlinedButtonTheme: outlineButtonTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  inputDecorationTheme: inputDecorationTheme,
  bottomNavigationBarTheme: bottomNavigationBarTheme,
);
