part of 'login_bloc.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  error,
}

class LoginState extends Equatable {
  final String email;
  final String password;
  final String message;
  final LoginStatus loginStatus;

  bool get isValidEmail => email.length > 6;

  bool get isValidPassword => password.length > 5;

  const LoginState({
    this.email = " ",
    this.password = " ",
    this.message = " ",
    this.loginStatus = LoginStatus.initial,
  });

  LoginState copyWith({
    String? email,
    String? password,
    String? message,
    LoginStatus? loginStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      loginStatus: loginStatus ?? this.loginStatus,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        message,
        loginStatus,
      ];
}
