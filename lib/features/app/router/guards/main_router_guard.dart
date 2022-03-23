import 'package:auto_route/auto_route.dart';

class MainRouterGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (router.current.name != resolver.route.name) {
      resolver.next(true);
    } else {
      resolver.next(false);
    }
  }
}
