import "package:flutter/material.dart";
import 'screens/homepage.dart';

// creating custom material colors
Map<int, Color> colors = {
  100: Color.fromRGBO(99,209,180, 0.7),
  200: Color.fromRGBO(99,209,190, 0.75),
  300: Color.fromRGBO(99,209,200, 0.8),
  400: Color.fromRGBO(99,209,205, 0.8),
  500: Color.fromRGBO(99,209,210, 0.8),
  600: Color.fromRGBO(99,209,215, 0.8),
};
MaterialColor customColor = MaterialColor(0xFF63D1B4, colors);

void main() {
  runApp(DriveEZ());
}

class DriveEZ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DriveEZ",
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      home: HomePage(),
    );
  }
}
