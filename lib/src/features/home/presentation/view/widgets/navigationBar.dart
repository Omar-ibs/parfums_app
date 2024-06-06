import 'package:flutter/material.dart';
import 'package:parfums_app/src/features/Cart/presentation/view/cart.dart';
import 'package:parfums_app/src/features/Favorite/presentation/view/favoriteView.dart';
import 'package:parfums_app/src/features/Profile/presentation/view/profile.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/homeWidgets.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class NavigationBarR extends StatefulWidget {
  const NavigationBarR({super.key});

  @override
  State<NavigationBarR> createState() => _NavigationBarRState();
}

class _NavigationBarRState extends State<NavigationBarR> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomeWidgets(),
    const FavoriteView(),
    const CartView(),
    const ProfileView(),
  ];
  void onPress(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  FluentIcons.home_24_regular,
                ),
                activeIcon: Icon(
                  FluentIcons.home_24_filled,
                )),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FluentIcons.heart_24_regular,
              ),
              activeIcon: Icon(FluentIcons.heart_24_filled, size: 30.0),
            ),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  FluentIcons.shopping_bag_24_regular,
                ),
                activeIcon: Icon(
                  FluentIcons.shopping_bag_24_filled,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  FluentIcons.person_24_regular,
                ),
                activeIcon: Icon(
                  FluentIcons.person_24_filled,
                )),
          ],
          iconSize: 30.0,
          selectedItemColor: const Color(0xff262825),
          unselectedItemColor: const Color(0xff262825),
          currentIndex: selectedIndex,
          backgroundColor: const Color(0xffffffff),
          enableFeedback: false,
          elevation: 0.0,
          onTap: onPress,
        ),
      ),
    );
  }
}
