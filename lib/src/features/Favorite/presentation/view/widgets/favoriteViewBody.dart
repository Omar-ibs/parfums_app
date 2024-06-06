import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/appBar.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FluentIcons.heart_24_filled,
              size: 200,
              color: Color(0xff808080),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'There is no perfume\n             here yet.',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff808080),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
