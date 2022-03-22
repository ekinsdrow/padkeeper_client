// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const InitialPage());
    },
    AuthRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    MainRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const MainPage());
    },
    LoginRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const RegisterPage());
    },
    ResetPasswordRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const ResetPasswordPage());
    },
    MainScreenPlaceholderRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const MainScreenPlaceholderPage(),
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    SearchRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SearchPage(),
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SettingsPage(),
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(InitialRoute.name, path: '/'),
        RouteConfig(AuthRouter.name, path: 'auth', children: [
          RouteConfig(LoginRoute.name, path: '', parent: AuthRouter.name),
          RouteConfig(RegisterRoute.name,
              path: 'register', parent: AuthRouter.name),
          RouteConfig(ResetPasswordRoute.name,
              path: 'resetpassword', parent: AuthRouter.name)
        ]),
        RouteConfig(MainRoute.name, path: '/main', children: [
          RouteConfig('#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'placeholder',
              fullMatch: true),
          RouteConfig(MainScreenPlaceholderRoute.name,
              path: 'placeholder', parent: MainRoute.name),
          RouteConfig(SearchRoute.name, path: 'search', parent: MainRoute.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [InitialPage]
class InitialRoute extends PageRouteInfo<void> {
  const InitialRoute() : super(InitialRoute.name, path: '/');

  static const String name = 'InitialRoute';
}

/// generated route for
/// [EmptyRouterPage]
class AuthRouter extends PageRouteInfo<void> {
  const AuthRouter({List<PageRouteInfo>? children})
      : super(AuthRouter.name, path: 'auth', initialChildren: children);

  static const String name = 'AuthRouter';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(MainRoute.name, path: '/main', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: 'register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [ResetPasswordPage]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: 'resetpassword');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [MainScreenPlaceholderPage]
class MainScreenPlaceholderRoute extends PageRouteInfo<void> {
  const MainScreenPlaceholderRoute()
      : super(MainScreenPlaceholderRoute.name, path: 'placeholder');

  static const String name = 'MainScreenPlaceholderRoute';
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}
