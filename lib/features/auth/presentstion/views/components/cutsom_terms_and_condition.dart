import 'package:flutter/material.dart';
import 'package:task_1_cat/core/utils/app_colors.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/core/utils/app_styles.dart';

class CustomTermsAndConditionWidget extends StatelessWidget {
  const CustomTermsAndConditionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
      style: AppStyles.arial400Size8,
      children: [
        const TextSpan(text: AppStrings.byCheckingTheBoxYouAgreeToOur),
        TextSpan(text: AppStrings.terms, style: AppStyles.arial400Size8.copyWith(color: AppColors.kPrimaryColor)),
        const TextSpan(text: AppStrings.and),
        TextSpan(text: AppStrings.conditions, style: AppStyles.arial400Size8.copyWith(color: AppColors.kPrimaryColor))
      ]
    ));
  }
}