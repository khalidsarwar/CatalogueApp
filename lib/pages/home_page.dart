import 'package:catalogue_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
