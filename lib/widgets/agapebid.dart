import 'package:flutter/material.dart';

class AgapeBid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      color: Colors.pink[200],
      height: 300,
      width: 100,
      alignment: Alignment.bottomCenter,
      child: CircleAvatar(
        maxRadius: 20,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
