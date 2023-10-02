import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  bool koyuMod = false;

  @override
  Widget build(BuildContext context) {
    Color arkaPlanRenk = koyuMod ? Colors.black : Colors.white;
    Color textColor = koyuMod ? Colors.white : Colors.black;

    List<String> dropdownItems = ['Value 1', 'Value 2', 'Value 3'];
    String selectedValue = 'Value 1';
    String newValue;

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Theme Settings',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            SwitchListTile(
              title: Text(
                'Tema Koyu Mod',
                style: TextStyle(
                  color: textColor,
                ),
              ),
              value: koyuMod,
              onChanged: (bool newValue) {
                setState(() {
                  koyuMod = newValue;
                });
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            DropdownButton<String>(
              value: selectedValue,
              onChanged: (newValue) {
                setState(() {
                  selectedValue =
                      newValue.toString(); // Seçilen değeri güncelle
                });
              },
              items: dropdownItems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      backgroundColor: arkaPlanRenk,
    );
  }
}
