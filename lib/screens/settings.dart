import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Center(

        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/screen.jpg"),
              fit: BoxFit.cover,
            ),
          ),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "SETTING STUDENT DATA",
            style: TextStyle(
                fontFamily: 'Monaco',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black54
            ),
          ),
          ElevatedButton(
            child: const Text('Profile'),
            onPressed: () => showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: const Text('You are trying to change profile of Student AKMET?'),
                  actions: <Widget>[
                    FlatButton(
                        child: const Text('OK'),
                        onPressed: () => Navigator.pop(context)),
                  ],
                );
              },
            ),
          ),
          ElevatedButton(
            child: const Text('Student Location'),
            onPressed: () async {
              final String response = await showDialog<String>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: const Text('Are you sure to change location of student AKMET?'),
                    actions: <Widget>[
                      FlatButton(
                          child: const Text('Yes'),
                          onPressed: () => Navigator.pop(context, 'Yes')),
                      FlatButton(
                          child: const Text('No'),
                          onPressed: () => Navigator.pop(context, 'No')),
                    ],
                  );
                },
              );
              print('response = $response');
            },
          ),
        ],
      ),
    ),
    ),
    );
  }
}
