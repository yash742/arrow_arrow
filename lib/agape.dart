import 'package:authApp/widgets/agapebid.dart';
import 'package:authApp/widgets/agapedrawer.dart';
import 'package:flutter/material.dart';

class AgapeUser extends StatefulWidget {
  @override
  _AgapeUserState createState() => _AgapeUserState();
}

class _AgapeUserState extends State<AgapeUser> {
  List bottom = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          bottom.add(bottom.length);
        });
      }),
      appBar: AppBar(
        backgroundColor: Colors.white54,
        actions: <Widget>[],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            child: Container(
              width: 150,
              height: 150,
              alignment: Alignment.center,

              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
              // transform: Matrix4.rotationX(0.5),
            ),
          ),
          DraggableScrollableSheet(
              maxChildSize: 0.95,
              minChildSize: 0.10,
              initialChildSize: 0.2,
              builder: (context, ScrollController scrollcontroller) {
                return CustomScrollView(
                  controller: scrollcontroller,
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: buildtop(),
                    ),
                    SliverFixedExtentList(
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return Drawerr();
                      }, childCount: bottom.length),
                      itemExtent: 300,
                    ),
                    SliverToBoxAdapter(
                      child: sugestagap(),
                    ),

                    SliverToBoxAdapter(
                      child: sugestagap(),
                    )
                    //   SliverToBoxAdapter(
                    //   child: buildbottom(),
                    // )
                  ],
                );
              })
        ],
      ),
    );
  }
}

Widget buildtop() {
  return Column(
    children: <Widget>[
      Container(
        color: Colors.teal[700],
        height: 50,
        width: double.infinity,
      ),
      Card(
        elevation: 10,
        child: Container(
          color: Colors.white,
          height: 100,
          width: double.infinity,
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}

Widget buildbottom() {
  return Container(
    height: 200,
    width: double.infinity,
    color: Colors.pink,
  );
}

Widget sugestagap() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 100,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => AgapeBid()),
  );
}

/*ListView.separated(
                    controller: scrollcontroller,
                    itemCount: 10,
                    separatorBuilder: (context, index) => Divider(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.blueAccent,
                        child: Container(
                            height: 60,
                            width: 60,
                            child: Text("this is coming")),
                      );
                    }) */

/*CustomScrollView(
                    controller: scrollcontroller,
                    slivers: <Widget>[
                      /*   Container(
                    
                  
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),*/
                      SliverFixedExtentList(
                        itemExtent: 1,
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return ListTile(
                            title: Text("new try"),
                          );
                          /*ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Text("this is coming"),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Divider(
                                  color: Colors.red,
                                );
                              },
                              itemCount: 5);*/
                        }),
                      )
                    ]);*/
