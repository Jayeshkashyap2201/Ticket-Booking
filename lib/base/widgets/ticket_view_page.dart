import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:transport_booking/base/widgets/app_column_text_layout.dart';
import 'package:transport_booking/base/widgets/app_layoutBuilder_widget.dart';
import 'package:transport_booking/base/widgets/big_circle.dart';
import 'package:transport_booking/base/widgets/big_dot.dart';
import 'package:transport_booking/base/widgets/text_style_fourth.dart';
import 'package:transport_booking/screens/ticket/widgets/Ticket_view.dart';
class TicketViewPage extends StatelessWidget {
  final Map<String,dynamic>ticket;
  final bool ? isColor;
  final bool? textColor;
  const TicketViewPage({super.key , required this.ticket, this.isColor= null, this.textColor=null});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      //height: 700,
      child: Container(
        margin: EdgeInsets.only(right: 16,left: 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color : Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21)),
              ),
              child: Column(
                children:<Widget> [
                  // show departure and destination with icons first line
                  Row(
                    children:<Widget> [
                      TextStyleFourth(text: ticket['from']['code'] ,color: Colors.black,),
                      Expanded(child: Container()),
                      const BigDot(color: Colors.black,),
                      Expanded(child: Stack(children:[
                        SizedBox(
                          height: 24,
                          child: AppLayoutbuilderWidget(randomDivider: 6,color: Colors.black,),
                        ),
                        Center(child: Transform.rotate(angle:1.57,child: Icon(Icons.local_airport_rounded,color: Colors.black,))),
                      ],)
                      ),
                      const BigDot(color: Colors.black,),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['to']['code'],color: Colors.black,),
                    ],
                  ),
                  SizedBox(height: 3),
                  // show departure and destination name icons time
                  Row(
                    children:<Widget> [
                      TextStyleFourth(text: ticket['from']['name'],color: Colors.black),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['flying_time'],color: Colors.black),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['to']['name'],color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
            //ble part of the ticket
            Container(
              color: isColor=='null'?Colors.orange : Colors.white,
              child: Row(
                children: [
                  BigCircle(isright: true,color: Colors.grey.shade200,),
                  Expanded(child: AppLayoutbuilderWidget(randomDivider: 10,color: Colors.black,)),
                  BigCircle(isright: false,color: Colors.grey.shade200,),
                ],
              ),
            ),
            //circles
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor=='null'?Colors.orange : Colors.white,
                borderRadius: const BorderRadius.only(
                    // bottomLeft: Radius.circular(21),
                    // bottomRight: Radius.circular(21)
                ),
              ),
              child:  Column(
                children:<Widget> [
                  // show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: ticket['date'] ,
                          bottomText:'Date',
                          isColor: Colors.black,
                          alignment: CrossAxisAlignment.start),
                      AppColumnTextLayout(
                          topText: ticket['departure_time'] ,
                          bottomText:'Departure Time',
                          isColor: Colors.black,
                          alignment: CrossAxisAlignment.center),
                      AppColumnTextLayout(
                          topText: ticket['number'].toString() ,
                          bottomText:'Number',
                          isColor: Colors.black,
                          alignment: CrossAxisAlignment.end),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  Row(
                    children: [
                      Text('Flutter',style: TextStyle(
                        fontSize: 17.0
                      ),),
                      Expanded(child: Container()),
                      Text('2201 3214',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Passenger',style: TextStyle(
                          fontSize: 12
                      ),),
                      Expanded(child: Container()),
                      Text('Passport',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text('24445 651231212',style: TextStyle(
                          fontSize: 17.0
                      ),),
                      Expanded(child: Container()),
                      Text('220123',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Number of E-tickets',style: TextStyle(
                          fontSize: 12
                      ),),
                      Expanded(child: Container()),
                      Text('Booking Code',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 50,
                              width: 140,
                              child: Row(
                                children: [
                                  Image(image: AssetImage('images/visa.png'),),
                                  Text("******2455"),
                                ],
                              ),
                          ),
                          Text('Payment method',
                          style: TextStyle(
                            fontSize: 13,),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        children: [
                          Text('\$249.99',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                          Text("Price",
                          style: TextStyle(
                            fontSize: 11,
                          ),)
                        ],
                      ),
                    ],
                  ),
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      ),
                    ),
                    child:Container(
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget( barcode: Barcode.code128(),data: 'https://www.bharat_ghumo.com',
                        height: 70,
                        ),
                      ),
                    ) ,
                  ),
                ],
              ),
            ),
            TicketView(ticket: ticket),
          ],
        ),
      ),
    );
  }
}
