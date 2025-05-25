import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:transport_booking/screens/home/widgets/all_ticket.dart';

class AppDoubleText extends StatelessWidget {
 // const AppDoubleText({super.key});
  final String bigText;
  final String smallText;
  final VoidCallback? func;
  const AppDoubleText({required this.bigText,required this.smallText, required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget> [
        Text(bigText,style: AppStyles.headLineStyle3),
        InkWell(
          onTap: func ,
          child: Text(smallText,style: AppStyles.textstyle.copyWith(
            color: AppStyles.primarycolor,
          ),),
        ),
      ],
    );
  }
}


