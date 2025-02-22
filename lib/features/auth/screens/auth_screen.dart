import 'package:dog_care/features/auth/components/form_widget.dart';
import 'package:dog_care/features/auth/components/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/routes/routes_name.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';

class AuthScreen extends StatefulWidget {
  // final AuthRepository authRepository;

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late AuthBloc _loginBloc;
  bool isLogin = true;

  @override
  void initState() {
    super.initState();
    _loginBloc = AuthBloc();
  }

  void _setAuthProcedure() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => _loginBloc,
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            print(state.loginStatus);
            if (state.loginStatus == AuthStatus.error) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.message.toString()),
                  ),
                );
            }

            if (state.loginStatus == AuthStatus.success) {
              Navigator.pushNamed(context, RoutesName.mainScreen);
            }
          },
          child: BlocBuilder<AuthBloc, AuthState>(
              buildWhen: (current, previous) => false,
              builder: (context, state) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/logo_without_background.png",
                          scale: 1.0,
                          fit: BoxFit.cover,
                          height: 300,
                          width: 300,
                        ),
                        isLogin ? FormWidget() : SignUpWidget(),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              !isLogin ? "Please create an account" : "Already have an account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
