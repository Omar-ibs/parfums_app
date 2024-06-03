import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 0
                  ? const Icon(
                      FluentIcons.home_24_filled,
                      size: 30.0,
                    )
                  : const Icon(
                      FluentIcons.home_24_regular,
                      size: 30.0,
                    ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 1
                  ? const Icon(
                      FontAwesomeIcons.solidHeart,
                    )
                  : const Icon(
                      FontAwesomeIcons.heart,
                    ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 2
                  ? const Icon(Icons.shopping_cart)
                  : const Icon(
                      Icons.shopping_cart_outlined,
                    ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: selectedIndex == 3
                  ? const Icon(FontAwesomeIcons.solidUser)
                  : const Icon(FontAwesomeIcons.user),
            ),
          ],
          selectedItemColor: const Color(0xff262825),
          unselectedItemColor: const Color(0xff262825),
          currentIndex: selectedIndex,
          backgroundColor: const Color(0xffffffff),
          enableFeedback: false,
          elevation: 20.0,
          onTap: onPress,
        ),
      ),
    );
  }
}
