import 'package:task_1_cat/core/cache/shared_pref.dart';
import 'package:task_1_cat/core/service/service_locator.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';

void tokenSaved(String token)
{
  getIt<CacheHelper>().saveData(key: AppStrings.token, value: token);
}