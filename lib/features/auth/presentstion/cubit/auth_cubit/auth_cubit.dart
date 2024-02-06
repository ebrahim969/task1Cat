import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1_cat/features/auth/data/repos/auth_repo.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());

  final AuthRepo authRepo;
  String? name;
  String? password;
  String? phone;
  String? email;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signinFormKey = GlobalKey();

  Future<void> signUpUser() async {
    emit(SignUpLoading());
    var result = await authRepo.signUpUser(
      name: "name!",
      email: "email09876-09-0-@gmail.com",
      phone: "phone!",
      password: "password!",
    );
    print(result.toString());
    result.fold((failure) {
      emit(SignUpFailure(errorMessage: failure.errorMessage));
    }, (success) {
      emit(SignUpSuccess(successMessage:success.message));
    });
  }

    Future<void> signInUser() async {
    emit(SignInLoading());
    var result = await authRepo.signInUser(
      email: "a@gmail.com",
      password: "anas124",
    );
    print(result.toString());
    result.fold((failure) {
      emit(SignInFailure(errorMessage: failure.errorMessage));
    }, (success) {
      emit(SignInSuccess(successMessage:success.message));
    });
  }
}
