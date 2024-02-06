import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1_cat/core/service/service_locator.dart';
import 'package:task_1_cat/features/auth/presentstion/cubit/auth_bloc/auth_bloc.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt.get<AuthBloc>(),
          child: const SignInViewBody()),
      ),
    );
  }
}