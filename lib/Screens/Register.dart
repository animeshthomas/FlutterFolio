import 'package:flutter/material.dart';
import 'package:testone/Screens/Login.dart';
import 'package:testone/main.dart';

class Register extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pswd = TextEditingController();

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
                controller: name, // Use name controller for name field
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.contact_mail_sharp),
                  labelText: "Name",
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                controller: pswd,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_rounded),
                  labelText: "Password",
                  hintText: "Enter Your Password",
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
                    var getName = name.text; // Use getName for name value
                    var getEmail = email.text;
                    var getPswd = pswd.text;
                    print(getName + getEmail + getPswd);
                  },
                  child: Text(
                    "Register",
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
                    "Go to Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.brown),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
