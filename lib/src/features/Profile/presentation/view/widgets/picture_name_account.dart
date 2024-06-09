import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/constants.dart';
import 'package:parfums_app/src/core/styles.dart';

class ProfilePictureAndName extends StatelessWidget {
  const ProfilePictureAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: 180.0,
              width: 180.0,
              color: Colors.red,
              child: Image.asset(
                kidu,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: 250.0,
            height: 70.0,
            child: Text(
              'Omar Abdulsattar Ibrahim',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: kTextStyle22.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
