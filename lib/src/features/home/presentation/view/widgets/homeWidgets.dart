import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/constants.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/appBar.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/customRow.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/itemCard.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/simpleDescription.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 20.0),
      child: Column(
        children: [
          const AppBarR(),
          SizedBox(
            height: MediaQuery.of(context).size.height - 152,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: const [
                CustomRow(
                  head: 'Best Sellers',
                ),
                SimpleDescription(description: 'The Best Perfume Ever'),
                Row(
                  children: [
                    ItemCard(
                      image: perfume1,
                      title: tPerfume1,
                    ),
                    ItemCard(
                      image: perfume2,
                      title: tPerfume2,
                    ),
                  ],
                ),
                CustomRow(head: 'Just Arrived'),
                SimpleDescription(description: 'Recently Arrived Perfumes'),
                Row(
                  children: [
                    ItemCard(image: perfume3, title: tPerfume3),
                    ItemCard(image: perfume4, title: tPerfume4),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
