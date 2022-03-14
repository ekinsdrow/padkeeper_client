import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:padkeeper/features/app/app.dart';
import 'package:padkeeper/features/app/bloc/initial/initial_bloc.dart';

class AppScope extends StatelessWidget {
  const AppScope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InitialBloc()
        ..add(
          const InitialEvent.fetch(),
        ),
      child: App(),
    );
  }
}
