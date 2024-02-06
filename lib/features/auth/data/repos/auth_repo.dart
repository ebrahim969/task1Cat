import 'package:dartz/dartz.dart';
import 'package:task_1_cat/core/errors/api_failure.dart';
import 'package:task_1_cat/features/auth/data/model/response_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, ResponseModel>> signUpUser(
      {required String name,
      required String phone,
      required String email,
      required String password});
  Future<Either<Failure, ResponseModel>> signInUser({required String email, required String password});
}
