import 'package:authApp/screens/add_product.dart';
import 'package:authApp/widgets/picker/imagepicker.dart';
import 'package:flutter/material.dart';

class DemoDragable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 600,
          ),
          Positioned(
            child: Text(
              'TO do',
              style: TextStyle(fontSize: 40),
            ),
            top: 40,
            left: 20,
          ),
          DraggableScrollableSheet(
              maxChildSize: 0.85,
              minChildSize: 0.10,
              builder: (context, ScrollController scrollcontroller) {
                return Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40))),
                    child: ListView.builder(
                      itemBuilder: (context, index) => ListTile(
                        title: Text(
                          'task no $index',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'this is comig',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.normal),
                        ),
                        trailing: Icon(
                          Icons.check_circle,
                          color: Colors.greenAccent,
                        ),
                        isThreeLine: true,
                      ),
                      controller: scrollcontroller,
                      itemCount: 10,
                    ),
                  ),
                  Positioned(
                    child: ProfilePicker(),
                    left: 0,
                  ),
                ]);
              })
        ],
      ),
    );
  }
}
