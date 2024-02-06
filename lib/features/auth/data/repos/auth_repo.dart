import 'package:dartz/dartz.dart';
import 'package:task_1_cat/core/errors/api_failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, Map<String, dynamic>>> signUpUser(
      {required String name,
      required String phone,
      required String email,
      required String password});
  Future<Either<Failure, Map<String, dynamic>>> signInUser({required String email, required String password});
}
