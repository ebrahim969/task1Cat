import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1_cat/features/auth/presentstion/cubit/auth_cubit/auth_cubit.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create:(context) => AuthCubit(),
          child: const SignUpViewBody()),
      ),
    );
  }
}