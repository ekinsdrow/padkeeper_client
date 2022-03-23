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
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.mainRouterGuard})
      : super(navigatorKey);

  final MainRouterGuard mainRouterGuard;

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
    },
    AddRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AddPage(),
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ProfilePage(),
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ContentRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ContentPage(),
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
              redirectTo: 'search',
              fullMatch: true),
          RouteConfig(SearchRoute.name,
              path: 'search',
              parent: MainRoute.name,
              guards: [mainRouterGuard]),
          RouteConfig(SettingsRoute.name,
              path: 'settings',
              parent: MainRoute.name,
              guards: [mainRouterGuard]),
          RouteConfig(AddRoute.name,
              path: 'add', parent: MainRoute.name, guards: [mainRouterGuard]),
          RouteConfig(ProfileRoute.name,
              path: 'profile',
              parent: MainRoute.name,
              guards: [mainRouterGuard]),
          RouteConfig(ContentRoute.name,
              path: 'page', parent: MainRoute.name, guards: [mainRouterGuard])
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

/// generated route for
/// [AddPage]
class AddRoute extends PageRouteInfo<void> {
  const AddRoute() : super(AddRoute.name, path: 'add');

  static const String name = 'AddRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [ContentPage]
class ContentRoute extends PageRouteInfo<void> {
  const ContentRoute() : super(ContentRoute.name, path: 'page');

  static const String name = 'ContentRoute';
}
