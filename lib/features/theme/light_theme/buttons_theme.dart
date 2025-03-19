

import 'package:dog_care/features/theme/light_theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'light_color_scheme.dart';

final textButtonTheme = TextButtonThemeData(

  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodyMedium),
    backgroundColor: WidgetStatePropertyAll<Color?>(white),
    foregroundColor: WidgetStatePropertyAll<Color?>(lightGrey),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(classicRed),
    splashFactory: InkSparkle.splashFactory,
  ),
);


final outlineButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodySmall),
    backgroundColor: WidgetStatePropertyAll<Color?>(classicBlack),
    foregroundColor: WidgetStatePropertyAll<Color?>(white),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(lightGrey),
    splashFactory: InkSparkle.splashFactory,
  ),
);

// final switchTheme = SwitchThemeData(
//   thumbColor: WidgetStatePropertyAll<Color>(classicBlack),
//   trackColor: WidgetStatePropertyAll<Color>(lightGrey),
//   trackOutlineColor: WidgetStatePropertyAll<Color>(lightGrey),
//   thumbIcon: WidgetStatePropertyAll<Icon?>(Icon(Icons.add)),
// );
//


