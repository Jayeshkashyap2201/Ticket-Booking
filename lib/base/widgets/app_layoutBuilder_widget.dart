import 'package:flutter/material.dart';
class AppLayoutbuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final Color color;
  const AppLayoutbuilderWidget({super.key,required this.randomDivider,this.width=3, required this.color});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints ){
      print('${constraints.constrainWidth()}');
      int count = (constraints.constrainWidth() / randomDivider).floor();
      print(count);
      return Flex (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(count, (index) => SizedBox(width: width ,height: 1,
        child: DecoratedBox(decoration: BoxDecoration(
          color: color,
        ),
        ),
        ),
        ),
      );
    });
  }
}