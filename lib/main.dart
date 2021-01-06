import "package:flutter/material.dart";
import 'screens/homepage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(DriveEZ());
}

class DriveEZ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DriveEZ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage(),
    );
  }
}
