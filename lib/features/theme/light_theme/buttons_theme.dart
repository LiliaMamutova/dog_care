import 'package:dog_care/features/theme/light_theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'light_color_scheme.dart';

final textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodySmall),
    backgroundColor: WidgetStatePropertyAll<Color?>(white),
    foregroundColor: WidgetStatePropertyAll<Color?>(classicBlack),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(whiteGrey),
    splashFactory: InkSparkle.splashFactory,
  ),
);

final outlineButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodySmall),
    backgroundColor: WidgetStatePropertyAll<Color?>(darkGrey),
    foregroundColor: WidgetStatePropertyAll<Color?>(white),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(classicBlack),
    splashFactory: InkSparkle.splashFactory,
  ),
);

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle>(bodyLarge),
    backgroundColor: WidgetStatePropertyAll<Color?>(classicBlack),
    foregroundColor: WidgetStatePropertyAll<Color?>(white),
    overlayColor: WidgetStatePropertyAll<Color?>(darkGrey),
    elevation: WidgetStatePropertyAll<double?>(2.0),
    surfaceTintColor: WidgetStatePropertyAll<Color?>(classicBlack),
    side: WidgetStateProperty.resolveWith<BorderSide?>(
      (states) {
        if (states.contains(WidgetState.pressed)) {
          return BorderSide(color: whiteGrey, width: 3.0);
        } else if (states.contains(WidgetState.hovered)) {
          return BorderSide(color: errorColor, width: 1.5);
        }
        return BorderSide(color: classicBlack, width: 2.0);
      },
    ),
  ),
);
