import 'package:flutter/material.dart';
import 'package:transport_booking/base/bottom_nav_bar_.dart';
import 'package:transport_booking/base/utils/at_json.dart';
import 'package:transport_booking/base/widgets/ticket_view_page.dart';
import 'package:transport_booking/screens/home/widgets/all_hotels.dart';
import 'package:transport_booking/screens/home/widgets/all_ticket.dart';
import 'package:transport_booking/screens/home/widgets/hotel.dart';
import 'package:transport_booking/screens/home/widgets/hotel_detail.dart';
import 'package:transport_booking/screens/ticket/widgets/Ticket_view.dart';
import 'package:transport_booking/screens/search/Widgets/app_routs.dart';
import 'package:transport_booking/screens/ticket/widgets/ticket_screen.dart';
void main() {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouts.homepage,
      routes: {
        AppRouts.homepage : (context)=> const BottomNavBar(),
        AppRouts.AllTicket : (context)=> const AllTicket(),
        AppRouts.TicketScreen : (context)=> const TicketScreen(),
        AppRouts.Hotel : (context)=> const AllHotels(),
        AppRouts.HotelDetail : (context)=> const HotelDetail(),
        AppRouts.Ticket : (context)=> const TicketScreen(),
        //AppRouts.TicketViewPage : (context) => const TicketViewPage(ticket: ),
      },
        onGenerateRoute: (settings) {
          if (settings.name == AppRouts.TicketViewPage) {
            final args = settings.arguments;

            if (args == null || args is! Map<String, dynamic>) {
              return MaterialPageRoute(
                builder: (_) => Scaffold(
                  appBar: AppBar(title: Text('Error')),
                  body: Center(child: Text('Missing or invalid ticket data')),
                ),
              );
            }

            final ticket = args as Map<String, dynamic>;

            return MaterialPageRoute(
              builder: (context) => TicketViewPage(ticket: ticket),
            );
          }

          // fallback
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(child: Text('Route not found')),
            ),
          );
        }

    );
  }
}
