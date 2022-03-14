import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:padkeeper/common/assets/images/resources.dart';
import 'package:padkeeper/features/app/bloc/initial/initial_bloc.dart';
import 'package:padkeeper/features/app/router/router.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<InitialBloc, InitialState>(
      listener: (context, state) => state.whenOrNull(
        error: (error) {
          //TODO: show error, when app initializate
        },
        success: () => context.router.replace(
          const MainRoute(),
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Image.asset(
              PngPath.logo,
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
