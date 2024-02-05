import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/sign_up_view_form.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/custom_auth_header.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
              txt1Size: 36.sp,
              txt1: AppStrings.getStarted,
              txt2: AppStrings.byCreatingAFreeAccount,
            ),
          ),
          const SliverToBoxAdapter(
            child: SignUpViewForm(),
          ),
        ],
      ),
    );
  }
}
