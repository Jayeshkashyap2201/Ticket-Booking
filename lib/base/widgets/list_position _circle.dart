import 'package:flutter/material.dart';
class ListPositionCircle extends StatelessWidget {
  final double height;
  final double width;

  const ListPositionCircle(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: width,
      top: height,
      child: Container(
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 3, color: Colors.black),
        ),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
