import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parfums_app/src/core/constants.dart';

class AppBarR extends StatelessWidget {
  const AppBarR({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            FontAwesomeIcons.magnifyingGlass,
            color: Color(0xff262825),
          ),
        ],
      ),
    );
  }
}
