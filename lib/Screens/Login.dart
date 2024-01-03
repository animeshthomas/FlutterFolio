import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testone/Screens/Register.dart';

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
            )
          ],
        ),
      ),
    );
  }
}