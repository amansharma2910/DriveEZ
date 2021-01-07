import "package:flutter/material.dart";
import 'screens/homepage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BackendInitialize());
}

class BackendInitialize extends StatelessWidget {
  final Future<FirebaseApp> __initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: __initialization,
      builder: (context, snapshot){
        if(snapshot.hasError){
          return ErrorScreen();
        }
        if(snapshot.connectionState == ConnectionState.done){
          return DriveEZ();
        }
        return Loading();
      },
    );
  }
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

//TODO: Make a better UI for error screen
class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Failed to connect",
      home: Container(
        child: Text("Firebase did not connect."),
      ),
    );
  }
}

//TODO: Make a better UI for loading screen
class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Loading",
      home: Container(
        child: Text("Loading..."),
      ),
    );
  }
}


