import 'package:dog_care/features/theme/dark_theme/dark_color_scheme.dart';
import 'package:flutter/material.dart';

final ButtonStyle loginButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: classicBlack,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
