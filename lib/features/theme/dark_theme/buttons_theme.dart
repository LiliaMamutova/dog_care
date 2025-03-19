
import 'package:dog_care/features/theme/dark_theme/dark_color_scheme.dart';
import 'package:dog_care/features/theme/dark_theme/text_theme.dart';

import 'package:flutter/material.dart';

final textButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodyMedium),
    backgroundColor: WidgetStatePropertyAll<Color?>(lightGrey),
    foregroundColor: WidgetStatePropertyAll<Color?>(lightGrey),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(
        classicRed
    ),
    splashFactory: InkSparkle.splashFactory,
  ),
);

final outlineButtonTheme = OutlinedButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStatePropertyAll<TextStyle?>(bodySmall),
    backgroundColor: WidgetStatePropertyAll<Color?>(white),
    foregroundColor: WidgetStatePropertyAll<Color?>(classicBlack),
    elevation: WidgetStatePropertyAll<double?>(5.0),
    overlayColor: WidgetStatePropertyAll<Color?>(lightGrey),
    splashFactory: InkSparkle.splashFactory,
  ),
);

// final switchTheme = SwitchThemeData(
//   thumbColor: WidgetStatePropertyAll<Color>(lightGrey),
//   trackColor: WidgetStatePropertyAll<Color>(classicBlack),
//   trackOutlineColor: WidgetStatePropertyAll<Color>(lightGrey),
//   thumbIcon: WidgetStatePropertyAll<Icon?>(Icon(Icons.add)),
// );


