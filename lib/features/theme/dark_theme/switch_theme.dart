import 'package:dog_care/features/theme/dark_theme/dark_color_scheme.dart';
import 'package:flutter/material.dart';

final switchTheme = SwitchThemeData(
  thumbColor: WidgetStatePropertyAll<Color>(darkGrey),
  trackColor: WidgetStatePropertyAll<Color>(darkGrey),
  trackOutlineColor: WidgetStatePropertyAll<Color>(classicBlack),
  thumbIcon: WidgetStatePropertyAll<Icon?>(
    Icon(
      Icons.dark_mode,
      color: classicBlack,
    ),
  ),
);
