import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/custom_auth_header.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/sign_in_view_form.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24.h,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomAuthHeader(
              txt1Size: 24.sp,
              txt1: AppStrings.welcomeBack,
              txt2: AppStrings.signInToAccessYourAccount,
            ),
          ),
          const SliverToBoxAdapter(
            child:SignInViewForm(),
          ),
        ],
      ),
    );
  }
}