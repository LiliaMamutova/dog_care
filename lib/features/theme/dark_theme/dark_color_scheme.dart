import 'package:flutter/material.dart';

const white = Color(0xFFFBFBFB);
const classicRed = Color(0xFFE52020);
const lightGrey = Color(0xFF4C585B);
const classicBlack = Color(0xFF000000);

const errorColor = Color(0xFFA31D1D);

const colorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: classicRed,
  error: errorColor,
  onError: errorColor,
  onPrimary: classicRed,
  secondary: white,
  onSecondary: white,
  surface: classicBlack,
  onSurface: classicBlack,
);
