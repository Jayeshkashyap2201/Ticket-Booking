import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:transport_booking/base/res/styles/media.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:transport_booking/base/utils/at_json.dart';
import 'package:transport_booking/base/utils/hotel_json.dart';
import 'package:transport_booking/screens/search/Widgets/app_routs.dart';
import 'package:transport_booking/screens/ticket/widgets/Ticket_view.dart';
import 'package:transport_booking/base/widgets/app_double_text.dart';
import 'package:transport_booking/screens/home/widgets/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget> [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Good Morning",
                            style: AppStyles.headLineStyle1,
                        ),
                        SizedBox(height: 5),
                        Text("Book Ticket",
                          style: AppStyles.headLineStyle2,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text("Search icon"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: AppDoubleText(
                    bigText: "Upcoming flights",
                    smallText: "viewall",
                    func:()=>Navigator.pushNamed(context, AppRouts.AllTicket),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.take(2).map((singleTicket)=> GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, AppRouts.TicketViewPage , arguments: singleTicket);
                        },
                        child: TicketView(ticket: singleTicket)),
                    ).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: AppDoubleText(
                    bigText: "Hotels",
                    smallText: "viewall",
                    func:()=>Navigator.pushNamed(context, AppRouts.Hotel),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotel_list.take(3).map((singleHotel) => GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, AppRouts.HotelDetail);
                      },
                        child: Hotel(hotel: singleHotel)),
                      ).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
