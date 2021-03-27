import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Thamara extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(children: [
        DraggableScrollableSheet(
          maxChildSize: 0.9,
          minChildSize: 0.10,
          builder: (context, scrollController) {
            return ListView(
              children: <Widget>[
                Container(
                  color: Colors.green,
                )
              ],
              controller: scrollController,
            );
          },
        ),
      ]),
    );
  }
}
