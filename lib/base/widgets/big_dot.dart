import 'package:flutter/material.dart';
class BigDot extends StatelessWidget {
  final Color color;
  const BigDot({super.key, this.color=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5,color:color),
          borderRadius:  BorderRadius.circular(20),
        ),
    );
  }
}
