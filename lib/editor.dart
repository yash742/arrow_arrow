import 'dart:ui';

import 'package:flutter/material.dart';

class Blureffect extends StatefulWidget {
  @override
  _BlureffectState createState() => _BlureffectState();
}

class _BlureffectState extends State<Blureffect> {
  double blurinitialval = 0;
  @override
  Widget build(BuildContext context) {
    Widget blurcontainer(
        {@required Widget child,
        BorderRadius borderRadius,
        double sigmaX = 10,
        double sigmaY = 10}) {
      return ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: blurinitialval, sigmaY: blurinitialval),
            child: child),
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(child: Image.asset("assets/jishnu.jpg")),
          Center(
            child: blurcontainer(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.all(20),
                child: Text(
                  "this box will blur",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Slider(
              value: blurinitialval,
              max: 50,
              onChanged: (value) {
                setState(() {
                  blurinitialval = value;
                });
              })
        ],
      ),
    );
  }
}
