import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/styles.dart';

class SimpleDescription extends StatelessWidget {
  const SimpleDescription({
    super.key,
    required this.description,
  });
  final String description;
  @override
  Widget build(BuildContext context) {
    return Align(
      heightFactor: 1.5,
      alignment: Alignment.centerLeft,
      child: Text(
        description,
        style: kTextStyle16.copyWith(color: const Color(0xff808080)),
      ),
    );
  }
}
