import 'package:flutter/material.dart';

import '../../../shared/helpers/validations.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key, required this.emailChanged});

  final void Function(String) emailChanged;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: emailFocusNode,
      controller: emailController,
      decoration: InputDecoration(
        icon: Icon(Icons.email_outlined),
        hintText: "Email",
        labelText: "Email",
        labelStyle: Theme.of(context).textTheme.labelLarge,
      ),
      onChanged: (value) => widget.emailChanged(value),
      validator: emailValidator,
    );
  }
}
