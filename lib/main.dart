import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/routes/app_router.dart';
import 'package:task_1_cat/core/service/service_locator.dart';
import 'package:task_1_cat/features/auth/presentstion/cubit/auth_bloc/auth_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const Task1Cat());
}

class Task1Cat extends StatelessWidget {
  const Task1Cat({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: routes,
        );
      },
    );
  }
}
