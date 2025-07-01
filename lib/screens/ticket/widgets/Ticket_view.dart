import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/app_styles.dart';
import 'package:transport_booking/base/widgets/app_column_text_layout.dart';
import 'package:transport_booking/base/widgets/app_double_text.dart';
import 'package:transport_booking/base/widgets/app_layoutBuilder_widget.dart';
import 'package:transport_booking/base/widgets/big_circle.dart';
import 'package:transport_booking/base/widgets/big_dot.dart';
import 'package:transport_booking/base/widgets/text_style_fourth.dart';
import 'package:transport_booking/screens/search/Widgets/app_routs.dart';
class TicketView extends StatelessWidget {
  final Map<String,dynamic>ticket;
  final bool ? isColor;
  final bool? textColor;
  const TicketView({super.key , required this.ticket, this.isColor= null, this.textColor=null});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
          width: size.width * 0.85,
          height: 199,
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, AppRouts.TicketViewPage, arguments: ticket);
        },
        child: Container(
          margin: EdgeInsets.only(right: 16,left: 16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketblue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
                ),
                child: Column(
                  children:<Widget> [
                    // show departure and destination with icons first line
                    Row(
                      children:<Widget> [
                        TextStyleFourth(text: ticket['from']['code'], color: Colors.white, ),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(child: Stack(children:[
                          SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 6,color: Colors.white,),
                          ),
                          Center(child: Transform.rotate(angle:1.57,child: Icon(Icons.local_airport_rounded,color: Colors.white,))),
                        ],)
                        ),
                        const BigDot(),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket['to']['code'],color: Colors.white,),
                      ],
                    ),
                    SizedBox(height: 3),
                    // show departure and destination name icons time
                    Row(
                      children:<Widget> [
                        TextStyleFourth(text: ticket['from']['name']?? "N/A",color: Colors.white,),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket['flying_time']?? "N/A",color: Colors.white,),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket['to']['name']?? "N/A",color: Colors.white,),
                      ],
                    ),
                  ],
                ),
              ),
              //ble part of the ticket
              Container(
                color: isColor!='null'?Colors.orange : Colors.white,
                child: Row(
                  children: [
                    BigCircle(isright: true,color: Colors.white,),
                    Expanded(child: AppLayoutbuilderWidget(randomDivider: 10,color: Colors.white,)),
                    BigCircle(isright: false,color: Colors.white,),
                  ],
                ),
              ),
              //circles
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isColor!='null'?Colors.orange : Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                ),
                child:  Column(
                  children:<Widget> [
                    // orange part
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnTextLayout(
                                topText: ticket['date'] ,
                                bottomText:'Date',
                                isColor: Colors.white,
                                alignment: CrossAxisAlignment.start),
                            AppColumnTextLayout(
                                topText: ticket['departure_time'] ,
                                isColor: Colors.white,
                                bottomText:'Departure Time',
                                alignment: CrossAxisAlignment.center),
                            AppColumnTextLayout(
                                topText: ticket['number'].toString() ,
                                bottomText:'Number',
                                isColor: Colors.white,
                                alignment: CrossAxisAlignment.end),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
