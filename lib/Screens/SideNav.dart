import 'package:flutter/material.dart';
import 'package:testone/Screens/MyDrawer.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        //   title: Text("Side Nav Bar"),
        //   leading: Icon(Icons.assistant_navigation,color: Colors.indigo,),
        //   backgroundColor: Colors.redAccent,
        ),
        drawer: MyDrawer(),
        body: Container(
          child: Center(child: Text("Profile Page")),
        ),
      ),
    );
  }
}
