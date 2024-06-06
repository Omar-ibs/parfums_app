import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/approuter.dart';

void main() {
  runApp(const PerfumesApps());
}

class PerfumesApps extends StatelessWidget {
  const PerfumesApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: AppRouter().routes,
      initialRoute: AppRouter.home,
    );
  }
}
