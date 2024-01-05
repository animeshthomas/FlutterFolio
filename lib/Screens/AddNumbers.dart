import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class AddNumbers extends StatefulWidget {
  const AddNumbers({super.key});

  @override
  State<AddNumbers> createState() => _AddNumbersState();
}

class _AddNumbersState extends State<AddNumbers> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  int _sum=0;
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
              TextField(
                controller: num1,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.numbers_rounded),
                  labelText: "First Number",
                  hintText: "Enter Num1",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: num2,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.numbers_rounded),
                  labelText: "Second Number",
                  hintText: "Enter Num2",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var getResult = int.parse(num1.text)+int.parse(num2.text);
                      _sum=getResult;
                      print(getResult);
                    });
                  },
                  child: Text(
                    "Add Numbers",
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
              Text(_sum.toString(),style: TextStyle(
                fontSize: 55,
                color: Colors.indigo,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
