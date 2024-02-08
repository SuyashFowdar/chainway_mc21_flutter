import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  'Suyash',
                  style: TextStyle(
                    fontSize: 40.0
                  ),
                ),
              ),
            ],
          ),
          Container (
            padding: EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Colors.deepOrange[300],
              child: Text(
                'View my reports',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            )
          ),
          Container (
            padding: EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Colors.deepOrange[300],
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            )
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
	}
}