import 'package:dog_care/config/routes/routes_name.dart';
import 'package:dog_care/screens/auth_screen.dart';
import 'package:dog_care/screens/main_screen.dart';
import 'package:dog_care/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.welcomeScreen:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
      case RoutesName.authScreen:
        return MaterialPageRoute(builder: (context) => const AuthScreen());
      case RoutesName.mainScreen:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No route generated"),
            ),
          );
        });
    }
  }
}
