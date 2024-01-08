import 'package:flutter/material.dart';
import 'package:testone/Screens/Colleges.dart';
import 'package:testone/Screens/SideNav.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Animesh Thomas"),
            accountEmail: Text("animeshthomas262@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://iconape.com/wp-content/png_logo_vector/avatar-10.png"),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SideNav()),
              );
            },
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.account_box,
              color: Colors.cyan,
            ),
          ),
          Divider(
            color: Colors.cyan,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApiCall()),
              );
            },
            title: Text(
              "View",
              style: TextStyle(fontSize: 16),
            ),
            trailing: Icon(
              Icons.cast_for_education,
              color: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }
}
