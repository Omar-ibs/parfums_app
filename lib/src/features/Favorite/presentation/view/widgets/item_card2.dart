import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/approuter.dart';
import 'package:parfums_app/src/core/constants.dart';
import 'package:parfums_app/src/core/styles.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/likeButton.dart';

class ItemCard2 extends StatelessWidget {
  const ItemCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRouter.productDetailsScreen),
      child: Container(
        height: 140.0,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                color: Color(0x0077767B),
                offset: Offset(0, 79),
                blurRadius: 22.0),
            BoxShadow(
                color: Color(0x0877767B),
                offset: Offset(0, 51),
                blurRadius: 20.0),
            BoxShadow(
                color: Color(0x0a77767B),
                offset: Offset(0, 29),
                blurRadius: 17.0),
            BoxShadow(
                color: Color(0x0b77767B),
                offset: Offset(0, 13),
                blurRadius: 13.0),
            BoxShadow(
                color: Color(0x3f77767B),
                offset: Offset(0, 3),
                blurRadius: 7.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                perfume1,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 100.0,
                width: 170,
                child: Column(
                  children: [
                    Text(
                      tPerfume1,
                      style: kTextStyle16,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      description1,
                      style: kTextStyle14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),
                child: SizedBox(
                  height: 97.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LikeButton(),
                      Text(
                        '50ml',
                        style: kTextStyle14,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
