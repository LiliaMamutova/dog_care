import 'package:equatable/equatable.dart';

enum AuthStatus {
  initial,
  loading,
  success,
  error,
}

class AuthState extends Equatable {
  final String email;
  final String password;
  final String message;
  final AuthStatus loginStatus;

  const AuthState({
    this.email = " ",
    this.password = " ",
    this.message = " ",
    this.loginStatus = AuthStatus.initial,
  });

  AuthState copyWith({
    String? email,
    String? password,
    String? message,
    AuthStatus? loginStatus,
  }) {
    return AuthState(
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
