import 'package:dog_care/features/theme/dark_theme/buttons_theme.dart';
import 'package:dog_care/features/theme/dark_theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'dark_color_scheme.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.red,
  hintColor: lightGrey,
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: lightGrey)),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: white),
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStatePropertyAll<Color>(lightGrey),
    trackColor: WidgetStatePropertyAll<Color>(lightGrey),
    trackOutlineColor: WidgetStatePropertyAll<Color>(classicBlack),
    // overlayColor: WidgetStatePropertyAll<Color>(classicBlack),
    thumbIcon: WidgetStatePropertyAll<Icon?>(
      Icon(
        Icons.dark_mode,
        color: classicBlack,
      ),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll<Color>(classicRed),
      // backgroundColor: WidgetStatePropertyAll<Color>(lightGrey),
    ),
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: lightGrey,
  ),

  appBarTheme: AppBarTheme(
    backgroundColor: lightGrey,
      titleTextStyle: headlineMedium,
  ),

  outlinedButtonTheme: outlineButtonTheme,
);
