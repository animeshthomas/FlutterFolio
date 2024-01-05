import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewStudents extends StatelessWidget {
  var names=["Animesh","Thomas","Rachel","Ashbin","Rahul","Animesh","Thomas","Rachel","Ashbin","Rahul"];
  var phone=[6238166457,9400917550,9496376341,9400918440,9400914535,6238166457,9400917550,9496376341,9400918440,9400914535];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Contacts"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(names[index]),
                subtitle: Text(phone[index].toString()),
                leading: Icon(Icons.account_box,
                  color: Colors.blueAccent,
                  size: 50,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.call, color: Colors.blueAccent,),
                      onPressed: () {

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.message, color: Colors.blueAccent,),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
