import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

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
            Text(
              "PEMENUHAN TUGAS AMK, NAVIGASI DAN ROUTE",
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
