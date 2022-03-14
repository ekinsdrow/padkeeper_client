import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:padkeeper/features/app/app.dart';
import 'package:padkeeper/features/app/bloc/initial/initial_bloc.dart';
import 'package:padkeeper/features/app/router/router.dart';

class AppScope extends StatelessWidget {
  AppScope({Key? key}) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InitialBloc()
        ..add(
          const InitialEvent.fetch(),
        ),
      child: App(
        router: appRouter,
      ),
    );
  }
}
