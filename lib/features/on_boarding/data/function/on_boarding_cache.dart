import 'package:task_1_cat/core/cache/shared_pref.dart';
import 'package:task_1_cat/core/service/service_locator.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: AppStrings.onBoardingVisited, value: true);
}