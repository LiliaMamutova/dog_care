import 'package:flutter/material.dart';

class InetExceptionWidget extends StatelessWidget {
  final Function() onPress;

  const InetExceptionWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .15,
        ),
        Icon(
          Icons.cloud_off,
          color: Colors.red,
          size: 60,
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Center(
            child: Text(
              "We are unable o show result. Please check your connection",
              // textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .1,
        ),
        ElevatedButton(
          onPressed: onPress,
          child: Center(
            child: Text("Retry", style: Theme.of(context).textTheme.bodySmall),
          ),
        ),
      ],
    );
  }
}
