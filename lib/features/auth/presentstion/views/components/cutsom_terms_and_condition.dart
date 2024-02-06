import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class CustomTermsAndConditionWidget extends StatelessWidget {
  const CustomTermsAndConditionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      child: Text.rich(
        TextSpan(
        style: AppStyles.arial400Size10,
        children: [
          const TextSpan(text: AppStrings.byCheckingTheBoxYouAgreeToOur),
          TextSpan(text: AppStrings.terms, style: AppStyles.arial400Size10.copyWith(color: AppColors.kPrimaryColor)),
          const TextSpan(text: AppStrings.and),
          TextSpan(text: AppStrings.conditions, style: AppStyles.arial400Size10.copyWith(color: AppColors.kPrimaryColor))
        ]
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,),
    );
  }
}