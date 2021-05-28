import 'package:flutter/material.dart';
import 'package:myapp/widgets/mydrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("HomePage"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Text("HomePage"),
      ),
    );
  }
}
