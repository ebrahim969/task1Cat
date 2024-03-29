part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

final class AuthInitial extends AuthState {}
final class SignUpLoading extends AuthState {}
final class SignUpSuccess extends AuthState {
  final String successMessage;

  SignUpSuccess({required this.successMessage});
}
final class SignUpFailure extends AuthState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}

final class SignInLoading extends AuthState {}
final class SignInSuccess extends AuthState {
  final String successMessage;
  final String? token;

  SignInSuccess({required this.successMessage, this.token});
}
final class SignInFailure extends AuthState {
  final String errorMessage;

  SignInFailure({required this.errorMessage});
}

