import 'package:flutter/material.dart';
import 'package:testone/Screens/Login.dart';
import 'package:testone/Screens/ViewStudents.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var _currentIndex = 0;
  List pages = [Login(), ViewStudents()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("MyApp"),
          ),
        ),
        body: pages[_currentIndex], // Use square brackets to access the element
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.home,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.contact_mail,
                ),
              ),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.logout,
                ),
              ),
              label: "Logout",
            ),
          ],
        ),
      ),
    );
  }
}
