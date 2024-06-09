import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/styles.dart';

class ProfileScreenButtons extends StatelessWidget {
  const ProfileScreenButtons({
    super.key,
    required this.buttonName,
  });
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      enableFeedback: false,
      splashFactory: InkRipple.splashFactory,
      // splashColor: Colors.black,
      child: SizedBox(
        height: 50.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                buttonName,
                style: kTextStyle18,
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
