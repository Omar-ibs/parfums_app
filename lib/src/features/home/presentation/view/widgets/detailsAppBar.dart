import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parfums_app/src/core/constants.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 35.0,
            color: Color(0xff262825),
          ),
        ),
        SvgPicture.asset(logo),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share_outlined,
            size: 30.0,
            color: Color(0xff262825),
          ),
        ),
      ],
    );
  }
}
