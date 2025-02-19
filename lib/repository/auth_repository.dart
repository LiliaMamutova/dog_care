import 'package:flutter/cupertino.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthRepository extends StatelessWidget {
  final String login;
  final String password;

  AuthRepository({required this.login, required this.password});

  Future<void> logIn(email, password) async {
    await Future.delayed(Duration(seconds: 2));
    throw Exception("Login failed");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
