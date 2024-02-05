import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_btn.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_text_feild.dart';

class SignInViewForm extends StatelessWidget {
  const SignInViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          labelText: AppStrings.enterYourEmail,
          iconPath: Assets.imagesMail,
        ),
        const CustomTextFormField(
          labelText: AppStrings.password,
          iconPath: Assets.imagesLock,
        ),
        const Row(
          children: [],
        ),
        SizedBox(
          height: 100.h,
        ),
        CustomBtn(
          text: AppStrings.next,
          onPressed: () {},
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}
