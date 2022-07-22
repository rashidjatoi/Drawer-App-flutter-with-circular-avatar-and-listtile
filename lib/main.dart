import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
          centerTitle: true,
        ),
        body: const Center(child: Text('Drawer App')),
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text('Rashid Ali'),
                accountEmail: Text('rashidjatoi31@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/my_profile.jpg'),
                ),
              ),
              ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
              ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
              ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Share',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
