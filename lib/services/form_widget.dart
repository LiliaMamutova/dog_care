import 'package:dog_care/buttons/auth_button.dart';
import 'package:dog_care/buttons/forgot_password_button.dart';
import 'package:dog_care/features/auth/components/email_field.dart';
import 'package:dog_care/features/auth/components/password_field.dart';
import 'package:dog_care/screens/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/auth/bloc/auth_bloc.dart';
import '../features/auth/bloc/auth_event.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  String password = "";
  String email = "";
  bool isLogin = true;

  void _submitForm() {
    if (_formKey.currentState == null) {
      return;
    }

    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    _formKey.currentState!.save();
    final loginEvent = LoginEvent(
      email: email,
      password: password,
      message: "Success",
    );
    BlocProvider.of<AuthBloc>(context).add(loginEvent);
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
          EmailField(
            emailChanged: (value) {
              email = value;
            },
          ),
          SizedBox(height: 5),
          PasswordField(
            text: "Password",
            passwordChangedEvent: (value) {
              password = value;
            },
          ),
          SizedBox(height: 10),
          ForgotPasswordButton(),
          SizedBox(height: 5),
          if (!isLogin) SignUpWidget(),
          SizedBox(height: 15),
          AuthButton(
            onPress: _submitForm,
            formKey: _formKey,
            text: "Log in!",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
