import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:transport_booking/base/widgets/text_style_fourth.dart';
import 'package:transport_booking/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  // const AppDoubleText({super.key});
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final Color isColor;
  const AppColumnTextLayout({required this.topText,required this.bottomText, required this.alignment,  this.isColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:alignment,
      children:<Widget> [
       TextStyleThird(text: topText,color:isColor,),
        SizedBox(height: 5),
        TextStyleFourth(text: bottomText,color:isColor),
      ],
    );
  }
}


