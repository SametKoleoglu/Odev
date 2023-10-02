import 'package:flutter/material.dart';
import 'package:hi_kod_odev_5/details.dart';
import 'profile.dart';
import 'settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 39, 111, 212)),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/settings': (context) => Settings(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

//homepage.dart

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              Navigator.pushNamed(context, '/settings');
            },
          ),
          IconButton(
            icon: const Icon(Icons.supervised_user_circle_rounded),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileInfoPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Image.network(
            //   'https://binyaprak.com/yazilar/kodluyoruzfellowlari-1', //Hocam denedim ama yapamadım
            //   width: 100.0,
            //   height: 100.0,
            // ),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsPage()),
                  );
                },
                child: Text("Detay sayfası"),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                ListTile(
                  title: Text('Monday'),
                ),
                ListTile(
                  title: Text('Tuesday'),
                ),
                ListTile(
                  title: Text('Wednesday'),
                ),
                ListTile(
                  title: Text('Thursday'),
                ),
                ListTile(
                  title: Text('Friday'),
                ),
                ListTile(
                  title: Text('Saturday'),
                ),
                ListTile(
                  title: Text('Sunday'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
