import 'package:flutter/material.dart';

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
      onPressed: onPress,
      child: Text(text),
    );
  }
}
