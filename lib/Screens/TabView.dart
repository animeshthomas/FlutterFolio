import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testone/Screens/Counter.dart';
import 'package:testone/Screens/Login.dart';
import 'package:testone/Screens/ViewStudents.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Link Your Codes"),
            backgroundColor: CupertinoColors.systemMint,
            bottom: TabBar(
              tabs: [
                Tab(text: "Home",icon: Icon(Icons.home),),
                Tab(text: "Contact",icon: Icon(Icons.contact_page)),
                Tab(text: "Profile",icon: Icon(Icons.account_balance))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Login(),
              ViewStudents(),
              Counter()
            ],
          )
        ),
      ),
    );
  }
}
