import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:padkeeper/features/app/widgets/pages/splash_page.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      initial: true,
      name: 'SplashRoute',
      page: SplashPage,
    ),
  ],
)

class AppRouter extends _$AppRouter {}
