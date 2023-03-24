import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Gmail'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.grey[600],
                    ),
                  ],
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.grey[600],
                    ),
                    CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                hintText: 'Search in emails',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Primary',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('John Doe'),
                  subtitle: Text('Lorem ipsum dolor sit amet.'),
                  trailing: Text('10:00 AM'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('Jane Doe'),
                  subtitle: Text('Consectetur adipiscing elit.'),
                  trailing: Text('9:00 AM'),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Promotions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('John Smith'),
                  subtitle:
                      Text('Pellentesque habitant morbi tristique senectus.'),
                  trailing: Text('Yesterday'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text('Jane Smith'),
                  subtitle: Text(
                      'Fusce non risus vitae mauris vehicula aliquet ut nec elit.'),
                  trailing: Text('2 days ago'),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: 56.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/mail_logo.png',
                  height: 24.0,
                  width: 24.0,
                ),
                Image.asset(
                  'assets/meet_logo.png',
                  height: 24.0,
                  width: 24.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
