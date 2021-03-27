import 'dart:ui';

import 'package:flutter/material.dart';

class ProScreen extends StatelessWidget {
  static const namedRout = "/proScreen";
  @override
  final appBaar = AppBar(
    backgroundColor: Colors.white.withOpacity(0.1),
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.more_vert,
            size: 30.0,
          ),
          onPressed: () {})
    ],
  );
  Widget build(BuildContext context) {
    Widget buildbutton(String name) {
      RaisedButton(onPressed: () {});
    }

    Widget buildBlur(
        {@required Widget child, double sigmaX = 25, double sigmaY = 25}) {
      return ClipRRect(
        borderRadius: BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );
    }

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: appBaar,
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height,
              width: size.width,
              color: Colors.blueGrey.withOpacity(0.2),
            ),
            Container(
              height: size.height * 0.65,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.green),
              child: InteractiveViewer(
                  child: Image.asset(
                "assets/jishnu.jpg",
                fit: BoxFit.fitHeight,
              )),
            ),
            Positioned(
                bottom: 0,
                //  child: BackdropFilter(
                //   filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: buildBlur(
                  child: Container(
                    width: size.width,
                    height: size.height * 0.35,
                    color: Colors.transparent.withOpacity(0.1),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
