import 'dart:core';

import 'package:dog_care/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 3),
    vsync: this,
  )..repeat();

  late final Animation<double> _animaton = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    timeDilation = 0.60;
    _navigateToAuthScreen();
  }

  _navigateToAuthScreen() async {
    await Future.delayed(Duration(seconds: 2), () {});

    if (mounted) {
      Navigator.pushNamed(context, RoutesName.authScreen);
    }

    //Navigator.pushReplacementNamed(context, RoutesName.authScreen);

    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => AuthScreen(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: _animaton,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Center(
          child: Image.asset(
            "assets/images/logo_without_background.png",
            scale: 1.0,
            fit: BoxFit.cover,
            height: 300,
            width: 300,

            //filterQuality: FilterQuality.low,
          ),
        ),
      ),
    );
  }
}
