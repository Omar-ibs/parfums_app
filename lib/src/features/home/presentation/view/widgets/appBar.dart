import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:parfums_app/src/core/constants.dart';

class AppBarR extends StatelessWidget {
  const AppBarR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.063,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu_sharp,
              color: Color(0xff262825),
            ),
            SvgPicture.asset(logo),
            const Icon(
              FluentIcons.search_24_filled,
              size: 30.0,
              color: Color(0xff262825),
            ),
          ],
        ),
      ),
    );
  }
}
