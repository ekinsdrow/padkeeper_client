import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:padkeeper/features/app/widgets/pages/initial_page.dart';
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
      name: 'MainRoute',
      page: MainPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
