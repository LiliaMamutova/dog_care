import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Function() onPress;

  const RoundButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: key,
      // onTap: onPress,
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
