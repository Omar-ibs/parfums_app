import 'package:flutter/material.dart';
import 'package:parfums_app/src/features/home/presentation/view/homeview.dart';

void main() {
  runApp(const ParfumsApps());
}

class ParfumsApps extends StatelessWidget {
  const ParfumsApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeView(),
    );
  }
}
