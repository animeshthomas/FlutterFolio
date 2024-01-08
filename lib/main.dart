import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testone/Screens/Demo.dart';
import 'package:testone/Screens/Login.dart';
import 'package:testone/Screens/SideNav.dart';
import 'package:testone/Screens/TabView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}


