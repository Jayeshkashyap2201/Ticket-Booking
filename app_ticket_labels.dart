import 'package:flutter/material.dart';
class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          AppTabs(tabText: firstTab),
          AppTabs(tabText: secondTab,tabBorder: true,tabcolor: true,),
        ],
      ),
    );
  }
}
class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabcolor;
  const AppTabs({super.key, required this.tabText , this.tabBorder=false,this.tabcolor=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return
      Container(
        padding:EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        width: size.width * 0.44,
        decoration: BoxDecoration(
          color: tabcolor==false? Colors.white : Colors.transparent,
          borderRadius: tabBorder==false?const BorderRadius.horizontal(left: Radius.circular(50)):
          BorderRadius.horizontal(right: Radius.circular(50)),
        ),
        child: Text(tabText),
      );
  }
}
