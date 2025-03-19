import 'package:flutter/material.dart';

import '../../../shared/helpers/validations.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.text, required this.passwordChangedEvent});

  final void Function(String value) passwordChangedEvent;

  final String text;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isPasswordVisible = false;

  final passController = TextEditingController();
  final passwordFocusNode = FocusNode();

  void _saveUserPassword(value) {}

  void _changePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => widget.passwordChangedEvent(value),
      controller: passController,
      keyboardType: TextInputType.text,
      focusNode: passwordFocusNode,
      onSaved: _saveUserPassword,
      validator: passwordValidator,
      obscureText: isPasswordVisible,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        hintText: widget.text,
        labelText: widget.text,
        labelStyle: Theme.of(context).textTheme.labelLarge,
        suffix: IconButton(
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: _changePasswordVisibility,
        ),
      ),
      // onFieldSubmitted: (value) {}
    );
  }
}
