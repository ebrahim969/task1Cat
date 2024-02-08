import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.welcomeToHome,
            style: AppStyles.montserrat500Size24,
          ),
          SizedBox(height: 72.h,),
          Image.asset(Assets.imagesHomePic),
          SizedBox(height: 53.h,),
          Text(
            AppStrings.discHome,
            style: AppStyles.montserrat300Size14
                .copyWith(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
