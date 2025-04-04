import 'dart:ui';
import 'package:flutter/material.dart';

const white = Color(0xFFFBFBFB);
const classicRed = Color(0xFFE52020);
const classicBlack = Color(0xFF000000);
const darkGrey = Color(0xFF4C585B);
const whiteGrey = Color(0xFFDFDFDF);
const lightGrey = Color(0xFFB4B4B8);


const errorColor = Color(0xFFA31D1D);

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: classicRed,
  error: errorColor,
  onError: errorColor,
  onPrimary: classicRed,
  secondary: white,
  onSecondary: white,
  surface: white,
  onSurface: classicBlack,


);
