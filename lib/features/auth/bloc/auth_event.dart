import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  final String message;
  const AuthEvent({
    this.message = "",
  });

  @override
  List<Object> get props => [message];
}

class EmailChanged extends AuthEvent {
  final String email;

  const EmailChanged({required this.email});

  @override
  List<Object> get props => [email];
}

class EmailUnfocused extends AuthEvent {}

class PasswordChanged extends AuthEvent {
  final String password;

  const PasswordChanged({required this.password});

  @override
  List<Object> get props => [password];
}

class PasswordUnfocused extends AuthEvent {}

class LoginEvent extends AuthEvent {
  const LoginEvent({
    required this.email,
    required this.password,
    required super.message,
  });

  final String email;
  final String password;

  @override
  List<Object> get props => [message, email, password];
}
