import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/constants.dart';
import 'package:parfums_app/src/core/styles.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/addtocartbutton.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/amountButtons.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/detailsAppBar.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/likeButton.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/rating.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailsAppBar(),
                Align(
                  heightFactor: 1.1,
                  alignment: Alignment.center,
                  child: Image.asset(
                    perfume1,
                    width: 184,
                    height: 300.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '€229.00',
                      style: kTextStyle16.copyWith(fontWeight: FontWeight.w500),
                    ),
                    const AmountButtons(),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                const Text(
                  'BVLGARI Rose Goldea',
                  style: kTextStyle22,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Rating(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'With its exclusive olfactory notes and its precious golden bottle, Rosa Goldea embodys the essence of femininity.',
                  style: kTextStyle16.copyWith(
                    color: const Color(0xff808080),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LikeButton(),
                    const AddToCartButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
