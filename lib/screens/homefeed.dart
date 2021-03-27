import 'package:flutter/material.dart';

class HomeFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('COMING...'),
          expandedHeight: 200.0,
          flexibleSpace: Image.asset('assets/trip.jpg'),
          floating: true,
        )
      ],
    ));
  }
}
