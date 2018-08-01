import 'package:flutter/material.dart';
import 'package:tabloid/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The HIT Times",
      theme: ThemeData(
        primaryColor: Colors.cyan,
        accentColor: Colors.teal,
      ),
      routes: routes,
    );
  }
}
