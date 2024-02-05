import 'package:flutter/material.dart';
import 'package:task_1_cat/features/home/presentation/view/sections/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
