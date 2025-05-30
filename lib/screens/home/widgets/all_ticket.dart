import 'package:flutter/material.dart';
import 'package:transport_booking/base/utils/at_json.dart';
import 'package:transport_booking/base/widgets/ticket_view_page.dart';
import 'package:transport_booking/screens/search/Widgets/app_routs.dart';
import 'package:transport_booking/screens/search/Widgets/ticket_promotion.dart';
import 'package:transport_booking/screens/ticket/widgets/Ticket_view.dart';
class AllTicket extends StatelessWidget {
  const AllTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View All"),
      ),
      body:ListView(
        children: [SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((singleTicket)=>
                  GestureDetector(
                    onTap: (){
                      var index = ticketList.indexOf(singleTicket);
                        Navigator.pushNamed(context,AppRouts.TicketViewPage, arguments: {{'index': index}
                        });
                      },
                      child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: TicketView(ticket: singleTicket)),
                  ),
              ).toList(),
            ),
          ),
        ]
      ),
    );
  }
}
