import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_1_cat/core/cache/shared_pref.dart';
import 'package:task_1_cat/core/service/api_service.dart';
import 'package:task_1_cat/features/auth/data/repos/auth_repo_implement.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<AuthRepoImplement>(
    AuthRepoImplement(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
