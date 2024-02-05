import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1_cat/core/routes/app_router.dart';

void main() {
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
      builder: (context , child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: routes,
        );
      },
    );

  }
}