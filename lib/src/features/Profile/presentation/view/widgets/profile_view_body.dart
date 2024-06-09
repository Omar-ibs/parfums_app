import 'package:flutter/material.dart';
import 'package:parfums_app/src/features/Profile/presentation/view/widgets/picture_name_account.dart';
import 'package:parfums_app/src/features/Profile/presentation/view/widgets/profilePictureAndName.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const ProfilePictureAndName(),
                const SizedBox(
                  height: 30.0,
                ),
                const ProfileScreenButtons(
                  buttonName: 'Account Privacy',
                ),
                const ProfileScreenButtons(
                  buttonName: 'Purchase History',
                ),
                const ProfileScreenButtons(
                  buttonName: 'About',
                ),
                const ProfileScreenButtons(
                  buttonName: 'Sign Out',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
