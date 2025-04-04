import 'package:dog_care/shared/helpers/validations.dart';
import 'package:flutter/material.dart';

class RecoveryPasswordWidget extends StatefulWidget {
  const RecoveryPasswordWidget({super.key});

  @override
  State<RecoveryPasswordWidget> createState() => _RecoveryPasswordWidgetState();
}

class _RecoveryPasswordWidgetState extends State<RecoveryPasswordWidget> {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: TextFormField(
            focusNode: emailFocusNode,
            controller: emailController,
            validator: emailValidator,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: "Email",
              labelText: "Email",
              labelStyle: Theme.of(context).textTheme.labelLarge,
            ),
            onTapAlwaysCalled: true,
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text(
            "Send",
          ),
        ),
      ],
    );
  }
}
