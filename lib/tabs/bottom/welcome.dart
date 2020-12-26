import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/screen.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Image.asset('assets/logo.png', width: 150)
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "HELLO, WELCOME TO STUDENT ACCESS AKMET",
              style: TextStyle(
                  fontFamily: 'Monaco',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.black54
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),

          ],
        ),
      ),
    );
  }
}
