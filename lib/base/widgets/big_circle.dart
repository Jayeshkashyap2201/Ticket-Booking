import 'package:flutter/material.dart';
class BigCircle extends StatelessWidget {
  final bool isright;
  final Color color;
  const BigCircle({super.key,required this.isright, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child:  DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            borderRadius: isright==true?const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ):const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            ),
          ),
      ),
    );
  }
}
