import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:transport_booking/base/res/styles/media.dart';
import 'package:transport_booking/screens/search/Widgets/app_routs.dart';
import 'package:transport_booking/screens/search/Widgets/app_text_icon.dart';
import 'package:transport_booking/screens/search/Widgets/app_ticket_labels.dart';
import 'package:transport_booking/screens/search/Widgets/find_tickets.dart';
import 'package:transport_booking/screens/search/Widgets/ticket_promotion.dart';

import '../../base/widgets/app_double_text.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        children: [
          Text("What are\nyou looking for?",
          style: AppStyles.headLineStyle1.copyWith(fontSize: 40)),
          SizedBox(height: 20),
          const AppTicketTabs(firstTab: "All Tickets", secondTab: 'Hotels',),
          SizedBox(height: 25),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded,text: "Departure",),
          SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded,text: "Arrival",),
          SizedBox(height: 20),
          const FindTickets(),
          SizedBox(height: 20),
          AppDoubleText(
            bigText: "Upcoming flights",
            smallText: "viewall",
            func:()=>Navigator.pushNamed(context, AppRouts.AllTicket),
          ),
          const SizedBox(height: 15),
          TicketPromotion(),
        ],
      ),
    );
  }
}
