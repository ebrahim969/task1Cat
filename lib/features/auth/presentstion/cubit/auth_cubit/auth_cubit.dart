import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1_cat/api_test.dart';
import 'package:task_1_cat/core/service/api_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  var api = ApiService();
  String? name;
  String? password;
  String? phone;
  String? email;
  GlobalKey<FormState> signupFormKey = GlobalKey();

  Future<void> signUpUser() async {
    try {
      emit(SignUpLoading());
      await api.post(
          // endPoint: "signup",
          // name: name!,
          // phone: phone!,
          // email: email!,
          // password: password!
          );

      emit(SignUpSuccess());
    } catch (e) {
      log(e.toString());
      emit(SignUpFailure(errorMessage: e.toString()));
    }
  }
}
