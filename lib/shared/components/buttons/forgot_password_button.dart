import 'package:dog_care/shared/components/recovery_password_widget.dart';
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

  Widget showModal(BuildContext context) {
    return RecoveryPasswordWidget();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        isLogin;
        showModalBottomSheet<void>(
          context: context,
          builder: showModal,
        );
      },
      child: Text(
        "Forgot password?",
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
