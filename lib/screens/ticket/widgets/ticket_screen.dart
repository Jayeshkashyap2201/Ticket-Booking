import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:transport_booking/base/utils/at_json.dart';
import 'package:transport_booking/base/widgets/ticket_view_page.dart';
import 'package:transport_booking/screens/search/Widgets/app_ticket_labels.dart';
import 'package:transport_booking/screens/ticket/widgets/Ticket_view.dart';

import '../../../base/widgets/list_position _circle.dart';
class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  void didChageDependencies(){
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args["index"]);
  }
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return
      Scaffold(
        appBar: AppBar(
          title:Text('Tickets',style: AppStyles.headLineStyle1.copyWith(fontSize: 30)),
          centerTitle: true,
          backgroundColor: AppStyles.bgColor,
          foregroundColor: Colors.grey,
        ),
        backgroundColor: AppStyles.bgColor,
        body:Stack(
          children: [
            ListPositionCircle(height: 295,width: 22),
            Expanded(child: Container()),
            ListPositionCircle(height: 295, width: size.width*0.94),
            ListView(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            children: [
              //SizedBox(height: 20),
              AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous',),
              const SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(
                    children: [
                      TicketView(ticket:ticketList[0]),
                      TicketView(ticket:ticketList[1]),
                      TicketView(ticket:ticketList[2]),
                      TicketView(ticket:ticketList[3]),
                      TicketView(ticket:ticketList[4]),
                      TicketView(ticket:ticketList[5]),
                      TicketView(ticket:ticketList[6]),
                    ],
                  )),
            ],
            ),
          ],
        )
      );
  }
}
