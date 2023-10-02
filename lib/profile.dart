import 'package:flutter/material.dart';

class ProfileInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Info',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Info'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'User Information',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.account_circle),
                  SizedBox(width: 8.0),
                  Text(
                    'Name: Jack Daniel',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.email),
                  SizedBox(width: 8.0),
                  Text(
                    'Email: jack@example.com',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.location_on),
                  SizedBox(width: 8.0),
                  Text(
                    'Location: London',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
