import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testone/Screens/AddNumbers.dart';
import 'package:testone/Screens/ContactsDynamic.dart';
import 'package:testone/Screens/Counter.dart';
import 'package:testone/Screens/Menu.dart';
import 'package:testone/Screens/Register.dart';
import 'package:testone/Screens/ViewStudents.dart';

class Login extends StatelessWidget {

  TextEditingController email = TextEditingController();
  TextEditingController pswd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.contact_mail_sharp),
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
                  var getEmail = email.text;
                  var getPswd = pswd.text;
                  print(getEmail + getPswd);
                },
                child: Text(
                  "Login",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                },
                child: Text(
                  "New User Register Here!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.brown),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNumbers()));
                },
                child: Text(
                  "Calculator App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.yellowAccent),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Counter()));
                },
                child: Text(
                  "Counter App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewStudents()));
                },
                child: Text(
                  "Contacts",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Contacts()));
                },
                child: Text(
                  "Contacts Dynamic",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.redAccent),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print("Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu()));
                },
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.brown),
              ),
            ),

          ],
        ),
      ),
    );
  }
}