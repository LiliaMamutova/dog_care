import 'package:dog_care/helpers/validations.dart';
import 'package:flutter/material.dart';

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
    return TextButton(
      onPressed: () {
        isLogin;
        showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Column(
                children: [
                  Container(
                    // height: 400,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 50),
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
                        ),
                        onTapAlwaysCalled: true,
                      ),
                    ),
                  ),
                  // SizedBox(height: 5),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.black),
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              );
            });
      },
      child: Text(
        "Forgot password?",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
