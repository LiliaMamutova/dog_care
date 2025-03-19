
import 'package:flutter/material.dart';

import 'light_color_scheme.dart';

class FontSize {
  final double smallText = 10.0;
  final double normalText = 16.0;
  final double largeText = 20.0;
  final double appBarText = 22.0;
  final double navBarText = 10.0;
  final double selectedFontSizeNavBarText = 15.0;
}


const displayLarge = TextStyle(
  fontSize: 20.0,
  fontFamily: "Akshar_font.ttf",
  fontWeight: FontWeight.bold,
  color: classicBlack,
);

const displayMedium = TextStyle(
  fontSize: 18.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.bold,
  color: white,
);


const displaySmall = TextStyle(
  fontSize: 14.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.bold,
  color: classicRed,
);

const headlineLarge = TextStyle(
  fontSize: 24.0,
  fontFamily: "Akshar_font.ttf",
  fontWeight: FontWeight.bold,
  color: white,
);

// use for appBar mainScreen
const headlineMedium = TextStyle(
  fontSize: 22.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.bold,
  color: white,
);


const headlineSmall = TextStyle(
  fontSize: 18.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.bold,
  color: white,
);


const titleLarge = TextStyle(
  fontSize: 58.0,
  fontFamily: "Freeman_font.ttf",
  fontStyle: FontStyle.italic,
  color: classicBlack,
);

const titleMedium = TextStyle(
  fontSize: 22.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.normal,
  color: white,
);

const titleSmall = TextStyle(
  fontSize: 18.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.normal,
  color: white,
);

// use for login and sign up
const bodyLarge = TextStyle(
  fontSize: 24.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.bold,
  color: classicBlack,
);

// use for forgot password
const bodyMedium = TextStyle(
  fontSize: 18.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.normal,
  color: classicRed,
);


// use for outlineButton send
const bodySmall = TextStyle(
  fontSize: 16.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.bold,
  color: white,
);

// use for auth labelText
const labelLarge = TextStyle(
  fontSize: 16.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.normal,
  color: classicBlack,
);

const labelMedium = TextStyle(
  fontSize: 14.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.normal,
  color: white,
);


const labelSmall = TextStyle(
  fontSize: 12.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.normal,
  color: white,
);

const captionLarge = TextStyle(
  fontSize: 16.0,
  fontFamily: "Freeman_font.ttf",
  fontWeight: FontWeight.normal,
  color: white,
);

const textTheme = TextTheme(
  displayLarge: displayLarge,
  displayMedium: displayMedium,
  displaySmall: displaySmall,
  headlineLarge: headlineLarge,
  headlineMedium: headlineMedium,
  headlineSmall: headlineSmall,
  titleLarge: titleLarge,
  titleMedium: titleMedium,
  titleSmall: titleSmall,
  bodyLarge: bodyLarge,
  bodyMedium: bodyMedium,
  bodySmall: bodySmall,
  labelLarge: labelLarge,
  labelMedium: labelMedium,
  labelSmall: labelSmall,
);
