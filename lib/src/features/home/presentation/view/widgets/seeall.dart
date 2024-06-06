import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/constants.dart';
import 'package:parfums_app/src/core/styles.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/detailsAppBar.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/itemCard.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

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
                  child: DetailsAppBar(),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'Best Sellers',
                      textAlign: TextAlign.center,
                      style: kTextStyle24,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'The Best Perfume Ever',
                      textAlign: TextAlign.center,
                      style: kTextStyle16.copyWith(
                        color: const Color(0xff808080),
                      ),
                    ),
                  ],
                ),
              ),
              SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 7,
                  childAspectRatio: 2 / 2.8,
                ),
                itemBuilder: (context, index) =>
                    const ItemCard(image: perfume1, title: tPerfume1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
