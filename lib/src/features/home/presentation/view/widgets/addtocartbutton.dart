import 'package:flutter/material.dart';
import 'package:parfums_app/src/core/styles.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 18,
                offset: Offset(0, 64),
                spreadRadius: 0.0,
                color: Color(0x00000000),
              ),
              BoxShadow(
                blurRadius: 16,
                offset: Offset(0, 41),
                spreadRadius: 0.0,
                color: Color(0x04000000),
              ),
              BoxShadow(
                blurRadius: 14,
                offset: Offset(0, 23),
                spreadRadius: 0.0,
                color: Color(0x0c000000),
              ),
              BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 10),
                spreadRadius: 0.0,
                color: Color(0x16000000),
              ),
              BoxShadow(
                blurRadius: 6,
                offset: Offset(0, 3),
                spreadRadius: 0.0,
                color: Color(0x1a000000),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(5),
            ),
            color: Color(0xff262825),
          ),
          child: Center(
              child: Text(
            'Add to Cart',
            style: kTextStyle18.copyWith(
                color: const Color(0xffffffff), fontWeight: FontWeight.w500),
          )),
        ),
      ),
    );
  }
}
