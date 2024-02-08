import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1_cat/features/auth/data/repos/auth_repo.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;
  String? name;
  String? registerPassword;
  String? phone;
  String? registerEmail;
  String? loginEmail;
  String? loginPassword;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signinFormKey = GlobalKey();
  AuthBloc(this.authRepo) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {

      // SignUp Method
      if (event is SignUpEvent) {
        emit(SignUpLoading());
        var result = await authRepo.signUpUser(
          name: name!,
          email: registerEmail!,
          phone: phone!,
          password: registerPassword!,
        );
        result.fold((failure) {
          emit(SignUpFailure(errorMessage: failure.errorMessage));
        }, (success) {
          emit(SignUpSuccess(successMessage: success.message));
        });
      } 
      // SignIn Method
      else if (event is SignInEvent) {
        emit(SignInLoading());
    var result = await authRepo.signInUser(
      email: loginEmail!,
      password: loginPassword!,
    );
    result.fold((failure) {
      emit(SignInFailure(errorMessage: failure.errorMessage));
    }, (success) {
      emit(SignInSuccess(successMessage:success.message, token: success.token,));
    });
      }
    });
  }
}
