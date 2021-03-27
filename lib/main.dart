import 'package:authApp/agape.dart';
import 'package:authApp/bagora.dart/screenpro.dart';
import 'package:authApp/bagora.dart/searcscreen.dart';
import 'package:authApp/bagora.dart/thamara.dart';
import 'package:authApp/editor.dart';
import 'package:authApp/screens/add_product.dart';
import 'package:authApp/screens/dragable.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(AuthApp());
}

class AuthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: AgapeUser(),
      routes: {
        Editedproductscreen.namedroute: (context) => Editedproductscreen(),
      },
    );
  }
}
