import 'package:flutter/material.dart';
import 'nocorona.dart';
import 'positive.dart';
import 'maybe.dart';
import 'register.dart';
import 'login.dart';
import 'splash.dart';

void main() => runApp(MyApp());
bool isChecked = false;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}