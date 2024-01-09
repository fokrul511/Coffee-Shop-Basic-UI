import 'package:flutter/material.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(color: Color(0xff212325), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 8,
        )
      ]),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Color(0xffe57734),
            size: 35,
          ), Icon(
            Icons.favorite,
            color: Color(0xffe57734),
            size: 35,
          ), Icon(
            Icons.notifications,
            color: Color(0xffe57734),
            size: 35,
          ), Icon(
            Icons.person,
            color: Color(0xffe57734),
            size: 35,
          ),
        ],
      ),
    );
  }
}
