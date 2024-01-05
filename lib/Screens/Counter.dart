import 'package:flutter/material.dart';
import 'package:testone/main.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("MyApp"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var getResult = _counter++;
                      print(getResult);
                    });
                  },
                  child: Text(
                    "ADD+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var getResult = _counter--;
                      print(getResult);
                    });
                  },
                  child: Text(
                    "SUB--",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    print("Button Clicked");
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  child: Text(
                    "Back To Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.brown),
                ),
              ),
              Text(_counter.toString(),style: TextStyle(
                fontSize: 55,
                color: Colors.indigo,
              )),
            ],
          ),
        ),
      ),
    );;
  }
}
