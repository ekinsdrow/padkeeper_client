import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              enabledBorder:
                  Theme.of(context).inputDecorationTheme.focusedBorder,
            ),
          ),
        ],
      ),
    );
  }
}
