import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18,horizontal: 18),
      child: Center(
        child: Text("Find tickets",
        style: AppStyles.textstyle.copyWith(color: Colors.white),),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
    );
  }
}
