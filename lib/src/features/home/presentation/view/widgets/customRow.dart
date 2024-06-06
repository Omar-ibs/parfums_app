import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/approuter.dart';
import 'package:parfums_app/src/core/styles.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.head,
    required this.description,
  });
  final String head;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                head,
                style: kTextStyle24,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, AppRouter.seeAllScreen),
                child: Container(
                  width: 88.0,
                  height: 32,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x08000000),
                          blurRadius: 5,
                          offset: Offset(0, 17),
                          spreadRadius: 0.0),
                      BoxShadow(
                          color: Color(0x08000000),
                          blurRadius: 4,
                          offset: Offset(0, 11),
                          spreadRadius: 0.0),
                      BoxShadow(
                          color: Color(0x08000000),
                          blurRadius: 4,
                          offset: Offset(0, 6),
                          spreadRadius: 0.0),
                      BoxShadow(
                          color: Color(0x08000000),
                          blurRadius: 3,
                          offset: Offset(0, 3),
                          spreadRadius: 0.0),
                      BoxShadow(
                          color: Color(0x4000000),
                          blurRadius: 1,
                          offset: Offset(0, 1),
                          spreadRadius: 0.0),
                    ],
                    color: Color(0xff262825),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                      topLeft: Radius.circular(4.0),
                      bottomRight: Radius.circular(4.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'see all',
                        style: kTextStyle16.copyWith(
                            color: const Color(0xffffffff)),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffffffff),
                        size: 18.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            heightFactor: 1.5,
            alignment: Alignment.centerLeft,
            child: Text(
              description,
              style: kTextStyle16.copyWith(color: const Color(0xff808080)),
            ),
          ),
        ],
      ),
    );
  }
}
