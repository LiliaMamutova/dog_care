import 'package:dog_care/auth_widgets/email_field.dart';
import 'package:dog_care/auth_widgets/password_field.dart';
import 'package:dog_care/buttons/auth_button.dart';
import 'package:dog_care/buttons/forgot_password_button.dart';
import 'package:dog_care/screens/sign_up_widget.dart';
import 'package:flutter/material.dart';

import '../screens/main_screen.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;

  void _submitForm() {
    if (_formKey.currentState == null) {
      return;
    }

    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MainScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          EmailField(),
          SizedBox(height: 5),
          PasswordField(
            text: "Password",
            passwordChangedEvent: (value) {},
          ),
          SizedBox(height: 10),
          ForgotPasswordButton(),
          SizedBox(height: 5),
          if (!isLogin) SignUpWidget(),
          SizedBox(height: 15),
          AuthButton(
            onPress: _submitForm,
            formKey: _formKey,
            text: "Log in",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
