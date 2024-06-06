import 'package:flutter/material.dart';
import 'package:parfums_app/src/features/Favorite/presentation/view/widgets/item_card2.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/appBar.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                floating: true,
                snap: true,
                scrolledUnderElevation: 0.0,
                backgroundColor: Color(0xffffffff),
                expandedHeight: 50.0,
                automaticallyImplyLeading: false,
                pinned: false,
                flexibleSpace: Padding(
                  padding: EdgeInsets.only(
                    top: 4.0,
                  ),
                  child: AppBarR(),
                ),
              ),
              SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8 / 0.3,
                ),
                itemBuilder: (context, index) => const ItemCard2(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Icon(
//   FluentIcons.heart_24_filled,
//   size: 200,
//   color: Color.fromARGB(255, 151, 150, 150),
// ),
// SizedBox(
//   height: 10.0,
// ),
// Text(
//   'There is no perfume\n          here yet.',
//   style: TextStyle(
//     fontSize: 25.0,
//     fontWeight: FontWeight.w400,
//     color: Color.fromARGB(255, 151, 150, 150),
//   ),
// ),
