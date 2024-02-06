import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/functions/navigation.dart';
import 'package:task_1_cat/core/functions/show_toast.dart';
import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/features/auth/presentstion/cubit/auth_cubit/auth_cubit.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/already_memember_widget.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_btn.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_check_box.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_text_feild.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/cutsom_terms_and_condition.dart';

class SignUpViewForm extends StatelessWidget {
  const SignUpViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showToast(state.successMessage);
          customReplacementNavigate(context, "/SignInView");
        } else if (state is SignUpFailure) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthCubit cubit = context.read<AuthCubit>();
        return Form(
          key: cubit.signupFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.fullName,
                iconPath: Assets.imagesUser,
                onChanged: (value) {
                  cubit.name = value;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.validEmail,
                iconPath: Assets.imagesMail,
                onChanged: (value) {
                  cubit.email = value;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.phoneNumber,
                iconPath: Assets.imagesSmartphone,
                onChanged: (value) {
                  cubit.phone = value;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.strongPassword,
                iconPath: Assets.imagesLock,
                onChanged: (value) {
                  cubit.password = value;
                },
              ),
              const Row(
                children: [CustomCheckBox(), CustomTermsAndConditionWidget()],
              ),
              SizedBox(
                height: 100.h,
              ),
              state is SignUpLoading ?
              const Center(child: CircularProgressIndicator(),)
              :CustomBtn(
                text: AppStrings.next,
                onPressed: () async{
                  if(cubit.signupFormKey.currentState!.validate())
                  {
                    await cubit.signUpUser();
                  }
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              const AlreadyMemberWidget(),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        );
      }
    );
  }
}
