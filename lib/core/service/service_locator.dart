import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_1_cat/core/service/api_service.dart';
import 'package:task_1_cat/features/auth/data/repos/auth_repo_implement.dart';
import 'package:task_1_cat/features/auth/presentstion/cubit/auth_cubit/auth_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<AuthRepoImplement>(
    AuthRepoImplement(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<AuthCubit>(AuthCubit(getIt.get<AuthRepoImplement>()));
}
