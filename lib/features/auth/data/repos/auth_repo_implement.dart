import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_1_cat/core/errors/api_failure.dart';
import 'package:task_1_cat/core/service/api_service.dart';
import 'package:task_1_cat/features/auth/data/repos/auth_repo.dart';

class AuthRepoImplement implements AuthRepo {
  final ApiService apiService;
  AuthRepoImplement(this.apiService);

  @override
  Future<Either<Failure, Map<String, dynamic>>> signInUser(
      {required String email, required String password}) async {
    try {
      var data = await apiService.post(
          endPoint: "signin", data: {'email': email, 'password': password});
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> signUpUser(
      {required String name,
      required String phone,
      required String email,
      required String password}) async {
    try {
      var data = await apiService.post(endPoint: "signup", data: {
        'name': name,
        'phone': phone,
        'email': email,
        'password': password,
        'confirmPassword': password,
        'location':
            '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}'
      });
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}