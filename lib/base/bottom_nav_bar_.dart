import 'package:flutter/material.dart';
import 'package:transport_booking/screens/home/widgets/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:transport_booking/screens/search/search_screen.dart';

import '../screens/ticket/widgets/ticket_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //list is iterated over screens
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child:  Text('Profile')),
  ];
  int _selectedIndex = 0 ;

  // change index for BottomNavBar
  void _onItemTapped(int index){
   setState(() {
     _selectedIndex=index;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.blueGrey[300],
        showSelectedLabels: true,
        items:const [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: 'home',),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: 'search',),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: 'tickets',),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: 'profile',)
      ],
      ),
    );
  }
}
