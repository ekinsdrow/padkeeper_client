import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:padkeeper/common/assets/themes/themes.dart';
import 'package:padkeeper/features/app/router/router.dart';

class App extends StatelessWidget {
  const App({
    required this.router,
    Key? key,
  }) : super(key: key);

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: router.delegate(),
      debugShowCheckedModeBanner: false,
      title: 'Padkeeper',
      theme: Themes.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
