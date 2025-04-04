import 'package:dog_care/repository/login_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  LoginRepository loginRepository = LoginRepository();

  AuthBloc() : super(AuthState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginEvent>(_onLoginEvent);
  }

  void _onLoginEvent(LoginEvent event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        loginStatus: AuthStatus.success,
        email: event.email,
        password: event.password,
        message: event.message,
      ),
    );
  }

  void _onEmailChanged(EmailChanged event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        email: event.password,
      ),
    );
  }

  // void _onLoginApi(AuthApi event, Emitter<AuthState> emit) async {
  //   print("LoginApi");
  //   emit(
  //     state.copyWith(
  //       loginStatus: LoginStatus.loading,
  //     ),
  //   );
  //
  //   Map loginData = {"email": state.email, "password": state.password};
  //
  //   try {
  //     final response = await http.post(Uri.parse("http://dog_care.com/api/login"), body: loginData);
  //     var data = jsonDecode(response.body);
  //     if (response.statusCode == 200) {
  //       emit(
  //         state.copyWith(
  //           loginStatus: LoginStatus.success,
  //           message: "Login successful",
  //         ),
  //       );
  //     } else {
  //       emit(
  //         state.copyWith(
  //           loginStatus: LoginStatus.error,
  //           message: data["error"],
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     emit(
  //       state.copyWith(
  //         message: e.toString(),
  //       ),
  //     );
  //   }
  //
  //   // void _onPageChanged(PageChanged event, Emitter<LoginState> emit) {
  //   //   emit(
  //   //     state.copyWith(
  //   //       email: event.,
  //   //     ),
  //   //   );
  //   // }
  //
  //   // emit(
  //   //   state.copyWith(loginStatus: LoginStatus.loading),
  //   // );
  //   //
  //   // await loginRepository.loginApi(data).then((value) {
  //   //   if (value!.props.isNotEmpty) {
  //   //     emit(
  //   //       state.copyWith(
  //   //         message: value.props.toString(),
  //   //         loginStatus: LoginStatus.error,
  //   //       ),
  //   //     );
  //   //   } else {
  //   //     emit(
  //   //       state.copyWith(
  //   //         message: "Login successfully",
  //   //         loginStatus: LoginStatus.success,
  //   //       ),
  //   //     );
  //   //   }
  //   // }).onError((error, stackTrace) {
  //   //   emit(
  //   //     state.copyWith(
  //   //       message: error.toString(),
  //   //       loginStatus: LoginStatus.error,
  //   //     ),
  //   //   );
  //   // });
  // }
}
