import 'package:flutter/material.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignInViewBody(),
      ),
    );
  }
}