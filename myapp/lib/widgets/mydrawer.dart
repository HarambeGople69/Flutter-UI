import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.purple,
      child: ListView(
        
        children: [
          DrawerHeader(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              accountName: Text("Utsav Shrestha"),
              accountEmail: Text("tsvshrsth@gmail.com"),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
              size: 25,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.message,
              color: Colors.white,
              size: 25,
            ),
            title: Text(
              "Inbox",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
