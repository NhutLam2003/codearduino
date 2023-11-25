import 'package:doan_nhom16/Home.dart';
import 'package:doan_nhom16/Setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: '/home',
      routes: {
        '/home':(context) => Home(),
        '/setting':(context) => Setting(),
      },
    );
  }
}

