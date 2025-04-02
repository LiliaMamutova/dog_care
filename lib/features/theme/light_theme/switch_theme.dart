import 'package:dog_care/features/theme/light_theme/light_color_scheme.dart';
import 'package:flutter/material.dart';

final switchTheme = SwitchThemeData(
  thumbColor: WidgetStatePropertyAll<Color>(lightGrey),
  trackColor: WidgetStatePropertyAll<Color>(lightGrey),
  trackOutlineColor: WidgetStatePropertyAll<Color>(white),
  thumbIcon: WidgetStatePropertyAll<Icon?>(
    Icon(
      Icons.light_mode,
      color: white,
    ),
  ),
);
