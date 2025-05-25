import 'package:flutter/material.dart';
import '../../../base/res/styles/app_styles.dart';
import '../../../base/res/styles/media.dart';
class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          width: size.width * 0.42,
          height: 435,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AppMedia.airplane),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("20% discount on the early booking of this flight. Don't miss",
                  style: AppStyles.headLineStyle2),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12 , horizontal: 12),
                  width: size.width * 0.44,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.teal.shade300,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Discount\nfor survey",
                        style: AppStyles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text("Take the survey about our services and get discount",
                        style: AppStyles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -40.0,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 15,
                        color : Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange.shade800,
              ),
              child: Column(
                children: [
                  Text("Take Love}",
                    style: AppStyles.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  Text('\u{1F60A}',style: TextStyle(fontSize: 50),)
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
