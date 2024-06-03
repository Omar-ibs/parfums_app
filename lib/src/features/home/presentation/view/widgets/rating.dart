import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FluentIcons.star_24_filled,
          color: Color(0xffFFD600),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          '4.50',
          style: kTextStyle16.copyWith(color: Colors.black),
        ),
        const SizedBox(
          width: 3.0,
        ),
        Text(
          '(85)',
          style: kTextStyle16.copyWith(color: const Color(0xff808080)),
        )
      ],
    );
  }
}
