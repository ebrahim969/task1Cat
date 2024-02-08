import 'package:dartz/dartz.dart';
import 'package:task_1_cat/core/errors/api_failure.dart';
import 'package:task_1_cat/features/auth/data/model/login_response_model.dart';
import 'package:task_1_cat/features/auth/data/model/register_response_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, RegisterResponseModel>> signUpUser(
      {required String name,
      required String phone,
      required String email,
      required String password});
  Future<Either<Failure, LoginResponseModel>> signInUser({
    required String email,
    required String password,
  });
}
