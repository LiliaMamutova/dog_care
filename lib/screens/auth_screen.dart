import 'package:dog_care/bloc/login_bloc.dart';
import 'package:dog_care/screens/sign_up_widget.dart';
import 'package:dog_care/services/form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatefulWidget {
  // final AuthRepository authRepository;

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late LoginBloc _loginBloc;

  // AuthServices _authServices = AuthServices();
  bool isLogin = true;

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();

    // _authServices.isLogin(context);
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
        child: BlocListener<LoginBloc, LoginState>(
          listenWhen: (previous, current) =>
              previous.loginStatus != current.loginStatus,
          listener: (context, state) {
            if (state.loginStatus == LoginStatus.error) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.message.toString()),
                  ),
                );
            }

            // if (state.loginStatus == LoginStatus.loading) {
            //   ScaffoldMessenger.of(context)
            //     ..hideCurrentSnackBar()
            //     ..showSnackBar(
            //       SnackBar(
            //         content: Text("Submitting..."),
            //       ),
            //     );
            // }

            if (state.loginStatus == LoginStatus.success) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text("Login successful"),
                  ),
                );
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
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
                              isLogin
                                  ? "Please create an account"
                                  : "Already have an account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(height: 15),
                            TextButton(
                              onPressed: () {
                                context.read<LoginBloc>().add(LoginApi());
                                _setAuthProcedure();
                              },
                              child: Text(
                                isLogin ? "Sign up" : "Log in",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ),
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
