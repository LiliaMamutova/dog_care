import 'package:flutter/material.dart';

import '../../helpers/validations.dart';

class ForgotPasswordButton extends StatefulWidget {
  const ForgotPasswordButton({super.key});

  @override
  State<ForgotPasswordButton> createState() => _ForgotPasswordButtonState();
}

class _ForgotPasswordButtonState extends State<ForgotPasswordButton> {
  bool isLogin = true;
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState == null) {
      return;
    }

    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      // there is will be navigate for page where will form for password recovery

      // Navigator.of(context).push(
      //   MaterialPageRoute(
      //     builder: (context) => SecondScreen(),
      //   ),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(Theme.of(context).textButtonTheme.style?.textStyle);
    return TextButton(
      onPressed: () {
        isLogin;
        showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                    child: TextFormField(
                      focusNode: emailFocusNode,
                      controller: emailController,
                      validator: emailValidator,
                      keyboardType: TextInputType.emailAddress,
                      // obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Email",
                        labelText: "Email",
                        labelStyle: Theme.of(context).textTheme.labelLarge,
                      ),
                      onTapAlwaysCalled: true,
                    ),
                  ),
                  // SizedBox(height: 5),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Send",
                    ),
                  ),
                ],
              );
            });
      },
      child: Text(
        "Forgot password?",
      ),
    );
  }
}
