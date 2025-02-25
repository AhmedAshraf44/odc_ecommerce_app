import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/network/dio_helper.dart';
import '../../../core/network/endpoints.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  bool obscureText = true;

  void changeIsPassword() {
    obscureText = !obscureText;
    emit(AuthPasswordVisibility());
  }

  void login(String userName, String password) {
    emit(AuthLoginLoading());
    Map<String, String> data = {'username': "mor_2314", 'password': "83r5^_"};
    DioHelper.postData(url: Endpoints.loginEndPoint, data: data).then((value) {
      if (value.statusCode == 200) {
        emit(AuthLoginSuccess());
      } else {
        emit(AuthLoginFailure("Login failed , please try again"));
      }
    }).onError((error, stackTrace) {
      emit(AuthLoginFailure("Login failed , please try again"));
    });
  }

  void signUp(String userName, String password, String email) {
    emit(AuthLoginLoading());
    Map<String, String> data = {
      'username': userName,
      'password': password,
      'email': email,
    };
    DioHelper.postData(url: Endpoints.signUpEndPoint, data: data).then((value) {
      if (value.statusCode == 200) {
        emit(AuthLoginSuccess());
      } else {
        emit(AuthLoginFailure("SignUp failed , please try again"));
      }
    }).onError((error, stackTrace) {
      emit(AuthLoginFailure("SignUp failed , please try again"));
    });
  }
}
