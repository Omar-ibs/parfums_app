import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/styles.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/likeButton.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/productDetails.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDetails(),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
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
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(16)),
          width: 177,
          height: 250.0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 115,
                      height: 45.0,
                      child: Text(
                        title,
                        style: kTextStyle16.copyWith(
                            overflow: TextOverflow.ellipsis),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: LikeButton(),
                    )
                  ],
                ),
                const Align(
                  heightFactor: 1.6,
                  alignment: Alignment.centerLeft,
                  child: Text('50 ml', style: kTextStyle14),
                ),
                Image.asset(
                  image,
                  height: 110,
                  width: 110,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  '€229.00',
                  style: kTextStyle14,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
