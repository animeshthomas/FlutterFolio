import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("Welcome, Dev"),
                  SvgPicture.asset("images/Add-task.svg", height: 65, width: 65),
                ],
              ),
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.withOpacity(0.5), Colors.pink.withOpacity(0.5)]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
                children: [
                  Text("Category"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Notifications"),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.withOpacity(0.5), Colors.pink.withOpacity(0.5)]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
