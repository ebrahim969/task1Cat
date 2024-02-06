import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/functions/navigation.dart';
import 'package:task_1_cat/core/functions/show_toast.dart';
import 'package:task_1_cat/core/utils/app_assets.dart';
import 'package:task_1_cat/core/utils/app_strings.dart';
import 'package:task_1_cat/features/auth/presentstion/cubit/auth_cubit/auth_cubit.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_btn.dart';
import 'package:task_1_cat/features/auth/presentstion/views/components/custom_text_feild.dart';

class SignInViewForm extends StatelessWidget {
  const SignInViewForm({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is SignInSuccess)
        {
          showToast(state.successMessage);
          customReplacementNavigate(context, "/HomeView");
        }else if(state is SignInFailure)
        {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        var cubit = context.read<AuthCubit>();
        return Form(
          key: cubit.signinFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.enterYourEmail,
                iconPath: Assets.imagesMail,
                onChanged: (email) {
                  cubit.email = email;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.password,
                iconPath: Assets.imagesLock,
                onChanged: (password) {
                  cubit.password = password;
                },
              ),
              const Row(
                children: [],
              ),
              SizedBox(
                height: 100.h,
              ),
              state is SignInLoading?  
              const Center(child: CircularProgressIndicator(),)
              :CustomBtn(
                text: AppStrings.next,
                onPressed: () async{
                  if(cubit.signinFormKey.currentState!.validate())
                  {
                    await cubit.signInUser();
                  }
                },
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
