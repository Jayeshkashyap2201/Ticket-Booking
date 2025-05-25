import 'package:flutter/material.dart';
import 'package:transport_booking/base/res/styles/media.dart';

import '../../../base/utils/hotel_json.dart';
class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}
class _HotelDetailState extends State<HotelDetail>{
  // late int ticketIndex=0;
  // @override
  // void didChangeDependencies(){
  //   if(ModalRoute.of(context)!.settings.arguments as Map!=null) {
  //     var args = ModalRoute
  //         .of(context)!
  //         .settings
  //         .arguments as Map;
  //     print(args['index']);
  //     //index = args['index'];
  //   }
  //   else{
  //     print("nul value");
  //   }
  //   super.didChangeDependencies();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("hotel"),
              background: Image.asset('images${hotel_list}'),
            ),
          ),
          SliverList(delegate:
            SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text("A detail is a small fact or spot in a larger entity. That ambiguous smile is just one detail of Leonardo da Vinci's Mona LisaDetail comes from the French for cutting into pieces, but in English we only use it to refer to the pieces. As a noun, detail means an isolated aspect of something larger. If you're painting a landscape, don't forget details like individual birds and trees. Detail can also mean a team of workers for a special task. If you go on a group camping trip, try for the food detail instead of the trash detail."),
                      Text("A detail is a small fact or spot in a larger entity. That ambiguous smile is just one detail of Leonardo da Vinci's Mona LisaDetail comes from the French for cutting into pieces, but in English we only use it to refer to the pieces. As a noun, detail means an isolated aspect of something larger. If you're painting a landscape, don't forget details like individual birds and trees. Detail can also mean a team of workers for a special task. If you go on a group camping trip, try for the food detail instead of the trash detail."),
                      Text("A detail is a small fact or spot in a larger entity. That ambiguous smile is just one detail of Leonardo da Vinci's Mona LisaDetail comes from the French for cutting into pieces, but in English we only use it to refer to the pieces. As a noun, detail means an isolated aspect of something larger. If you're painting a landscape, don't forget details like individual birds and trees. Detail can also mean a team of workers for a special task. If you go on a group camping trip, try for the food detail instead of the trash detail."),
                      Text("A detail is a small fact or spot in a larger entity. That ambiguous smile is just one detail of Leonardo da Vinci's Mona LisaDetail comes from the French for cutting into pieces, but in English we only use it to refer to the pieces. As a noun, detail means an isolated aspect of something larger. If you're painting a landscape, don't forget details like individual birds and trees. Detail can also mean a team of workers for a special task. If you go on a group camping trip, try for the food detail instead of the trash detail."),
                      Text("A detail is a small fact or spot in a larger entity. That ambiguous smile is just one detail of Leonardo da Vinci's Mona LisaDetail comes from the French for cutting into pieces, but in English we only use it to refer to the pieces. As a noun, detail means an isolated aspect of something larger. If you're painting a landscape, don't forget details like individual birds and trees. Detail can also mean a team of workers for a special task. If you go on a group camping trip, try for the food detail instead of the trash detail."),
                      Text("A detail is a small fact or spot in a larger entity. That ambiguous smile is just one detail of Leonardo da Vinci's Mona LisaDetail comes from the French for cutting into pieces, but in English we only use it to refer to the pieces. As a noun, detail means an isolated aspect of something larger. If you're painting a landscape, don't forget details like individual birds and trees. Detail can also mean a team of workers for a special task. If you go on a group camping trip, try for the food detail instead of the trash detail."),
                      Text ("More Images",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context , index){
                        return Image.network("https://via.placeholder.com/100x150");
                      },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
