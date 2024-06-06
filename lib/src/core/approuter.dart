import 'package:flutter/material.dart';
import 'package:parfums_app/src/features/home/presentation/view/homeview.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/productDetails.dart';
import 'package:parfums_app/src/features/home/presentation/view/widgets/seeall.dart';

class AppRouter {
  static const home = 'home';
  static const productDetailsScreen = 'ProductDetails';
  static const seeAllScreen = 'seeAllScreen';
  Map<String, Widget Function(BuildContext)> routes = {
    home: (context) => const HomeView(),
    productDetailsScreen: (context) => const ProductDetails(),
    seeAllScreen: (context) => const SeeAllButton()
  };
}
