import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.cover,
        ),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
