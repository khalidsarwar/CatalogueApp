import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //darkTheme: ThemeData(brightness: ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/Home': (context) => HomePage(),
        "/Login": (context) => LoginPage()
      },
    );
  }
}
