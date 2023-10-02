import 'package:flutter/material.dart';

//details.dart
class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Details Page '),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Details"),
          ],
        ),
      ),
    );
  }
}
