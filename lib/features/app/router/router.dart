import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:padkeeper/features/app/widgets/pages/initial_page.dart';
import 'package:padkeeper/features/auth/login/widgets/login_page.dart';
import 'package:padkeeper/features/auth/register/widgets/register_page.dart';
import 'package:padkeeper/features/auth/reset_password/widgets/reset_password_page.dart';
import 'package:padkeeper/features/main_screen/widgets/pages/main_page.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      initial: true,
      name: 'InitialRoute',
      page: InitialPage,
    ),
    AutoRoute<dynamic>(
      path: 'auth',
      name: 'AuthRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute<dynamic>(
          path: '',
          page: LoginPage,
        ),
        AutoRoute<dynamic>(
          path: 'register',
          page: RegisterPage,
        ),
        AutoRoute<dynamic>(
          path: 'resetpassword',
          page: ResetPasswordPage,
        ),
      ],
    ),
    AutoRoute<dynamic>(
      path: '/main',
      page: MainPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
