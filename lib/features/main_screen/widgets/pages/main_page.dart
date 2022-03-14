import 'package:flutter/material.dart';
import 'package:padkeeper/features/main_screen/widgets/reusable/sidebar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: const [
            Sidebar(),
            Expanded(
              child: Center(
                child: Text('Content'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
