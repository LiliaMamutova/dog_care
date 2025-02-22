import 'package:dog_care/config/routes/routes.dart';
import 'package:dog_care/config/routes/routes_name.dart';
import 'package:dog_care/shared/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white70, primarySwatch: Colors.red),
      home: WelcomeScreen(),
      initialRoute: RoutesName.welcomeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
