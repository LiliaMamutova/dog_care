import 'package:dog_care/features/theme/dark_theme/dark_color_scheme.dart';
import 'package:dog_care/features/theme/dark_theme/text_theme.dart';

import 'package:flutter/material.dart';

final textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodySmall),
    backgroundColor: WidgetStatePropertyAll<Color?>(classicBlack),
    foregroundColor: WidgetStatePropertyAll<Color?>(whiteGrey),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(classicBlack),
    splashFactory: InkSparkle.splashFactory,
  ),
);

final outlineButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodySmall),
    backgroundColor: WidgetStatePropertyAll<Color?>(white),
    foregroundColor: WidgetStatePropertyAll<Color?>(classicBlack),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(darkGrey),
    splashFactory: InkSparkle.splashFactory,
  ),
);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle>(bodyLarge),
    backgroundColor: WidgetStatePropertyAll<Color?>(classicBlack),
    foregroundColor: WidgetStatePropertyAll<Color?>(white),
    overlayColor: WidgetStatePropertyAll<Color?>(classicBlack),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    surfaceTintColor: WidgetStatePropertyAll<Color?>(darkGrey),
    side: WidgetStateProperty.resolveWith<BorderSide?>(
      (states) {
        if (states.contains(WidgetState.pressed)) {
          return BorderSide(color: white, width: 3.0);
        } else if (states.contains(WidgetState.hovered)) {
          return BorderSide(color: errorColor, width: 1.5);
        }
        return BorderSide(color: darkGrey, width: 2.0);
      },
    ),
  ),
);
