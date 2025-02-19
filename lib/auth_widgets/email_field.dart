import 'package:dog_care/bloc/login_bloc.dart';
import 'package:dog_care/helpers/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailField extends StatefulWidget {
  EmailField({super.key});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  // final UserModel user = UserModel("");

  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();

  void emailProvider(String? email) {}

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: emailFocusNode,
          controller: emailController,
          decoration: InputDecoration(
            icon: Icon(Icons.email_outlined),
            hintText: "Email",
            labelText: "Email",
          ),
          onChanged: (value) =>
              context.read<LoginBloc>().add(EmailChanged(email: value)),
          // onSaved: ,
          validator: emailValidator,

          // onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
