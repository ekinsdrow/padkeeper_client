import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:padkeeper/features/app/widgets/pages/initial_page.dart';
import 'package:padkeeper/features/auth/login/widgets/login_page.dart';
import 'package:padkeeper/features/auth/register/widgets/register_page.dart';
import 'package:padkeeper/features/auth/reset_password/widgets/reset_password_page.dart';
import 'package:padkeeper/features/main_screen/widgets/pages/main_page.dart';
import 'package:padkeeper/features/main_screen/widgets/pages/main_screen_placeholder.dart';
import 'package:padkeeper/features/search/widgets/pages/search_page.dart';
import 'package:padkeeper/features/settings/widgets/pages/settings_page.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      name: 'InitialRoute',
      page: InitialPage,
    ),
    AutoRoute(
      path: 'auth',
      name: 'AuthRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: '',
          page: LoginPage,
        ),
        AutoRoute(
          path: 'register',
          page: RegisterPage,
        ),
        AutoRoute(
          path: 'resetpassword',
          page: ResetPasswordPage,
        ),
      ],
    ),
    AutoRoute(
      path: '/main',
      page: MainPage,
      children: [
        CustomRoute(
          path: 'placeholder',
          initial: true,
          fullscreenDialog: true,
          page: MainScreenPlaceholderPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          path: 'search',
          page: SearchPage,
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          path: 'settings',
          page: SettingsPage,
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
