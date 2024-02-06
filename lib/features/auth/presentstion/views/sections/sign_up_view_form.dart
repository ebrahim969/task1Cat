import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/functions/navigation.dart';
import 'package:task_1_cat/core/functions/show_toast.dart';
import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/features/auth/presentstion/cubit/auth_bloc/auth_bloc.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/already_memember_widget.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_btn.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_check_box.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_text_feild.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/cutsom_terms_and_condition.dart';

class SignUpViewForm extends StatelessWidget {
  const SignUpViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showToast(state.successMessage);
          customReplacementNavigate(context, "/SignInView");
        } else if (state is SignUpFailure) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthBloc bloc = context.read<AuthBloc>();
        return Form(
          key: bloc.signupFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.fullName,
                iconPath: Assets.imagesUser,
                onChanged: (name) {
                  bloc.name = name;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.validEmail,
                iconPath: Assets.imagesMail,
                onChanged: (email) {
                  bloc.registeremail = email;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.phoneNumber,
                iconPath: Assets.imagesSmartphone,
                onChanged: (phone) {
                  bloc.phone = phone;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.strongPassword,
                iconPath: Assets.imagesLock,
                onChanged: (password) {
                  bloc.registerPassword = password;
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
                onPressed: () {
                  if(bloc.signupFormKey.currentState!.validate())
                  {
                    bloc.add(SignUpEvent());
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
