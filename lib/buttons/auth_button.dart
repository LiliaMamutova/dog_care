import 'package:dog_care/buttons/button_style.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final GlobalKey formKey;
  final VoidCallback onPress;
  final String text;

  const AuthButton({
    super.key,
    required this.onPress,
    required GlobalKey<State<StatefulWidget>> formKey,
    required this.text,
  }) : formKey = formKey;

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
