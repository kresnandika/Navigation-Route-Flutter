import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                child: Image.asset('assets/ray.png', width: 150)

            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Container(
                child: Image.asset('assets/nadika.png', width: 150)

            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Container(
                child: Image.asset('assets/zuh.png', width: 150)

            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
          ],
        ),

      ),
    );
  }
}
