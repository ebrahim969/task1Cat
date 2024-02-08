import 'package:flutter/material.dart';
import 'package:task_1_cat/core/cache/shared_pref.dart';
import 'package:task_1_cat/core/functions/navigation.dart';
import 'package:task_1_cat/core/service/service_locator.dart';
import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool onBoardingVisited =
        getIt<CacheHelper>().getData(key: AppStrings.onBoardingVisited) ??
            false;
    String token = getIt<CacheHelper>().getData(key: AppStrings.token) ?? "";
    if (onBoardingVisited == true) {
      if (token != "") {
        delayedNavigate(context, "/HomeView");
      } else {
        delayedNavigate(context, "/SignUpView");
      }
    } else {
      delayedNavigate(context, "/OnBoardingView");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesSplashPic),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.explora,
                style: AppStyles.montserrat700Size24,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(Assets.imagesSplashPic2),
            ],
          )
        ],
      ),
    );
  }
}
