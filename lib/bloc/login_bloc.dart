import 'dart:convert';

import 'package:dog_care/repository/login_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository = LoginRepository();

  LoginBloc() : super(LoginState()) {
    // on<LoginEvent>((event, emit) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_onLoginApi);
    // on<PageChanged> (_onPageChanged);
    // });
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.password,
      ),
    );
  }

  void _onLoginApi(LoginApi event, Emitter<LoginState> emit) async {
    emit(
      state.copyWith(
        loginStatus: LoginStatus.loading,
      ),
    );

    Map loginData = {"email": state.email, "password": state.password};

    try {
      final response = await http
          .post(Uri.parse("http://dog_care.com/api/login"), body: loginData);
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        emit(
          state.copyWith(
            loginStatus: LoginStatus.success,
            message: "Login successful",
          ),
        );
      } else {
        emit(
          state.copyWith(
            loginStatus: LoginStatus.error,
            message: data["error"],
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          message: e.toString(),
        ),
      );
    }

    // void _onPageChanged(PageChanged event, Emitter<LoginState> emit) {
    //   emit(
    //     state.copyWith(
    //       email: event.,
    //     ),
    //   );
    // }

    // emit(
    //   state.copyWith(loginStatus: LoginStatus.loading),
    // );
    //
    // await loginRepository.loginApi(data).then((value) {
    //   if (value!.props.isNotEmpty) {
    //     emit(
    //       state.copyWith(
    //         message: value.props.toString(),
    //         loginStatus: LoginStatus.error,
    //       ),
    //     );
    //   } else {
    //     emit(
    //       state.copyWith(
    //         message: "Login successfully",
    //         loginStatus: LoginStatus.success,
    //       ),
    //     );
    //   }
    // }).onError((error, stackTrace) {
    //   emit(
    //     state.copyWith(
    //       message: error.toString(),
    //       loginStatus: LoginStatus.error,
    //     ),
    //   );
    // });
  }
}
