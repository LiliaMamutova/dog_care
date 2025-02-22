import 'package:flutter/material.dart';

import 'button_style.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;

  const AuthButton({
    super.key,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: loginButtonStyle.backgroundColor,
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
