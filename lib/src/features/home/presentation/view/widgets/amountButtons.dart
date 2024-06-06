import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/styles.dart';

class AmountButtons extends StatelessWidget {
  const AmountButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Container(
            height: 32.0,
            width: 62.0,
            decoration: BoxDecoration(
                color: const Color(0xffFFE7E7),
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: const Color(0xffFFE7E7))),
            child: Center(
              child: Text(
                '50ml',
                style: kTextStyle16.copyWith(color: const Color(0xff808080)),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          child: Container(
            height: 32.0,
            width: 62.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: const Color(0xff808080),
              ),
            ),
            child: Center(
              child: Text(
                '100ml',
                style: kTextStyle16.copyWith(color: const Color(0xff808080)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
