import 'package:flutter/material.dart';
import 'package:transport_booking/base/utils/hotel_json.dart';
import 'package:transport_booking/screens/home/widgets/hotel.dart';
import 'package:transport_booking/screens/search/Widgets/app_routs.dart';
class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return
      Scaffold(
        appBar: AppBar(
          title: Text('All Hottels'),
          centerTitle: true,
        ),
        body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: hotel_list.map((singleTicket)=>
                  GestureDetector(
                    onTap: (){
                      var index = hotel_list.indexOf(singleTicket);
                      //print("your index is $index");
                      Navigator.pushNamed(context, AppRouts.HotelDetail, arguments: index);
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                      child: Hotel(hotel: singleTicket)),
              ),
              ).toList(),
            ),
          ),
        ],
            ),
      );
  }
}
