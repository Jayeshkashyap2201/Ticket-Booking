import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
class TextStyleFourth extends StatelessWidget {
  final String text;
  final Color color;
  const TextStyleFourth({super.key,required this.text,  required this.color});

  @override
  Widget build(BuildContext context) {
    return Text("$text",
    style: AppStyles.headLineStyle3.copyWith(color: color ,fontSize: 13),
    );
  }
}
