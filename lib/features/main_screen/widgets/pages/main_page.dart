import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:padkeeper/common/assets/constants.dart';
import 'package:padkeeper/features/main_screen/widgets/reusable/sidebar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Scaffold(
          body: SafeArea(
            child: Row(
              children: [
                AnimatedContainer(
                  duration: Constants.aniamionDuration,
                  child: Sidebar(
                    constraints: constrains,
                  ),
                ),
                Expanded(
                  child: AutoRouter(
                    builder: (context, content) {
                      return Container(
                        padding: const EdgeInsets.all(
                          Constants.mediumPadding,
                        ),
                        child: content,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
