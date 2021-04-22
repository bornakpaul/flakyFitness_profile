import 'package:flutter/material.dart';
import 'package:profile_flutter_app/screens/GymDescriptionPage.dart';
import 'package:profile_flutter_app/screens/LoginPage.dart';
import 'package:profile_flutter_app/screens/Profile%20Page.dart';
import 'package:profile_flutter_app/screens/accountPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}