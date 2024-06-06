import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/styles.dart';
import 'package:parfums_app/src/features/Favorite/presentation/view/widgets/item_card2.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/addtocartbutton.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/appBar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: const [
        AddToCartButton(
          title: 'Buy now',
        ),
      ],
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
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  '1 Perfume in cart',
                  style: kTextStyle18.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: ItemCard2(),
            ),
          ],
        ),
      ),
    ));
  }
}
