
import 'package:flutter/material.dart';
import 'package:flutterproject/Pagen1.dart';
import 'package:flutterproject/screens/screen1.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
  
   MainApp({super.key});
   
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1()
      );

  }
}
