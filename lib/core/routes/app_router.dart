import 'package:go_router/go_router.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sign_in_view.dart';
import 'package:task_1_cat/features/auth/presentstion/views/sign_up_view.dart';
import 'package:task_1_cat/features/home/presentation/view/home_view.dart';

final GoRouter routes = GoRouter(
  routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SignUpView(),
    ),

    GoRoute(
    path: "/SignInView",
    builder: (context, state) => const SignInView(),
    ),

    GoRoute(
    path: "/HomeView",
    builder: (context, state) => const HomeView(),
    ),
],
);