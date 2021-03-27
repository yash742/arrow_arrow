import 'package:flutter/material.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("this is my new dr"),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
              ],
            ),
          ),
          Stack(children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.grey,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        elevation: 5,
                        child: Container(
                          width: 100,
                          height: 150,
                        ));
                  }),
            ),
            Positioned(
              left: 10,
              top: 25,
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.green),
                      shape: BoxShape.circle,
                      color: Colors.white24),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
