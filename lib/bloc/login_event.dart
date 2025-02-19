part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends LoginEvent {
  final String email;

  EmailChanged({required this.email});

  @override
  List<Object> get props => [email];
}

class EmailUnfocused extends LoginEvent {}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged({required this.password});

  @override
  List<Object> get props => [password];
}

class PasswordUnfocused extends LoginEvent {}

// class AuthSubmitted extends LoginEvent {
//   @override
//   List<Object> get props => [];
// }

class LoginApi extends LoginEvent {
  // const LoginApi();
}

class PageChanged extends LoginEvent {}