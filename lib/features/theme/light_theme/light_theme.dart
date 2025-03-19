
import 'package:dog_care/features/theme/light_theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../light_theme/buttons_theme.dart';
import 'light_color_scheme.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.red,
  hintColor: Colors.white70,
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: classicBlack),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: classicBlack),
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStatePropertyAll<Color>(lightGrey),
    trackColor: WidgetStatePropertyAll<Color>(lightGrey),
    trackOutlineColor: WidgetStatePropertyAll<Color>(white),
    // overlayColor: WidgetStatePropertyAll<Color>(white),
    thumbIcon: WidgetStatePropertyAll<Icon?>(
      Icon(Icons.light_mode, color: white,),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll<Color>(classicRed),
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

  // floatingActionButtonTheme:
);
