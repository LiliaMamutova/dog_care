import 'package:dog_care/bloc/login_bloc.dart';
import 'package:dog_care/helpers/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {super.key, required this.text, required this.passwordChangedEvent});

  final void Function(String value) passwordChangedEvent;

  final String text;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isPasswordVisible = false;

  // final UserModel user = UserModel("");
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
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.password != previous.password,
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) => widget.passwordChangedEvent(value),
          controller: passController,
          keyboardType: TextInputType.text,
          focusNode: passwordFocusNode,
          onSaved: _saveUserPassword,
          validator: passwordValidator,
          obscureText: isPasswordVisible,
          //onTap: ,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: widget.text,
            labelText: widget.text,
            suffix: IconButton(
              icon: const Icon(Icons.remove_red_eye_outlined),
              onPressed: _changePasswordVisibility,
            ),
          ),
          // onFieldSubmitted: (value) {}
        );
      },
    );
  }
}
