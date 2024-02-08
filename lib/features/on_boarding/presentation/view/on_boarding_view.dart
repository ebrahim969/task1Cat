import 'package:flutter/material.dart';
import 'package:task_1_cat/features/on_boarding/presentation/view/sections/on_boarding_view_body.dart';

class OnBoradingView extends StatelessWidget {
  const OnBoradingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoradingViewBody(),
      ),
    );
  }
}