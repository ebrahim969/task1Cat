import 'package:flutter/material.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sections/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}