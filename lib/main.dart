import "package:flutter/material.dart";
import 'package:foodappui/screens/main_screen.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App UI ",
      home: MainScreen(),
    );
  }
}
