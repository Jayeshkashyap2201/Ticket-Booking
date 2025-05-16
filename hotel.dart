import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:transport_booking/base/res/styles/media.dart';
import 'package:transport_booking/base/utils/hotel_json.dart';
class Hotel extends StatelessWidget {
  final Map<String , dynamic> hotel;
  const Hotel ({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 0,left: 30),
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 300,
        width: size.width * 0.4,
        decoration: BoxDecoration(
          color: AppStyles.primarycolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit : BoxFit.cover,
                    image: AssetImage('${hotel['image']}')
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(hotel['special'],
              style: AppStyles.headLineStyle2.copyWith(color: Colors.red[200])),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(hotel['place'],
                  style: AppStyles.headLineStyle2.copyWith(color: Colors.white,fontSize: 16)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 3.0),
              child: Text(hotel['price'],
                  style: AppStyles.headLineStyle2.copyWith(color: Colors.red[100])),
            ),
          ],
        ),
      ),
    );
  }
}
