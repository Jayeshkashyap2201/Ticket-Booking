import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';
class TextStyleThird extends StatelessWidget {
  final String text;
  final TextAlign align;
  final Color color;
  const TextStyleThird({super.key,required this.text,this.align = TextAlign.start, required this.color});
  @override
  Widget build(BuildContext context) {
    return Text("$text",
      textAlign: align,
      style:AppStyles.headLineStyle3.copyWith(color:color),
    );
  }
}
