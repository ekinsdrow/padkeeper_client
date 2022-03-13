import 'package:flutter/material.dart';
import 'package:padkeeper/common/assets/images/resources.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset(
            PngPath.logo,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
