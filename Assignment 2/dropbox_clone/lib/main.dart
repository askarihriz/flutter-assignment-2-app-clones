import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropboxHomeScreen(),
    );
  }
}

class DropboxHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.blue,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Divider(),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/folder_icon.png'),
                    ),
                    title: Text('Python Programming'),
                    subtitle: Text('Shared on Feb 8, 2021'),
                    trailing: Icon(Icons.more_vert)),
                Divider(),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/folder_icon.png'),
                    ),
                    title: Text('Python Programming'),
                    subtitle: Text('Shared on Feb 8, 2021'),
                    trailing: Icon(Icons.more_vert)),
                Divider(),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/folder_icon.png'),
                    ),
                    title: Text('Python Programming'),
                    subtitle: Text('Shared on Feb 8, 2021'),
                    trailing: Icon(Icons.more_vert)),
                Divider(),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/folder_icon.png'),
                    ),
                    title: Text('Python Programming'),
                    subtitle: Text('Shared on Feb 8, 2021'),
                    trailing: Icon(Icons.more_vert)),
                Divider(),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/folder_icon.png'),
                    ),
                    title: Text('Python Programming'),
                    subtitle: Text('Shared on Feb 8, 2021'),
                    trailing: Icon(Icons.more_vert)),
                Divider(),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/folder_icon.png'),
                    ),
                    title: Text('Python Programming'),
                    subtitle: Text('Shared on Feb 8, 2021'),
                    trailing: Icon(Icons.more_vert)),
                Divider(),
              ],
            ),
          ),
          Container(
            height: 86.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    backgroundColor: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
