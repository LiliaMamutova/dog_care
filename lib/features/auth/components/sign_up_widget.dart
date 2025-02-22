import 'dart:core';

import 'package:dog_care/features/auth/components/email_field.dart';
import 'package:dog_care/features/auth/components/password_field.dart';
import 'package:dog_care/features/home/screens/main_screen.dart';
import 'package:flutter/material.dart';

import '../../../shared/components/buttons/auth_button.dart';
import '../../../shared/helpers/flush_bar.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;
  String? passwordEntered;
  String? confirmPassword;
  dynamic passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          EmailField(
            emailChanged: (value) {
              print("value from sign up widget email: $value");
            },
          ),
          SizedBox(height: 5),
          PasswordField(
            text: "Password",
            passwordChangedEvent: (value) {
              passwordEntered = value;
              print("value from sign up widget pass one: $value");
            },
          ),
          SizedBox(height: 10),
          PasswordField(
            text: "Please repeat password",
            passwordChangedEvent: (value) {
              confirmPassword = value;
              print("value from sign up widget pass two: $value");
            },
          ),
          SizedBox(height: 25),
          AuthButton(
            onPress: () {
              if (confirmPassword != passwordEntered) {
                FlushBarHelper.flushBarErrorMessage(
                  "Password does not match. Please re-type again",
                  context,
                );

                return;
              }

              final isValid = _formKey.currentState!.validate();
              if (isValid) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ),
                );
              } else {
                FlushBarHelper.flushBarErrorMessage(
                  "Please check fields",
                  context,
                );
              }
            },
            text: "Sign Up",
          ),
        ],
      ),
    );
  }
}
