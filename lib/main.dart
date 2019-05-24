import 'package:flutter/material.dart';
import 'chat_app/chat_app_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chat App",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xFF075E54),
        accentColor: new Color(0xFF25D366),
      ),
      home: new ChatAppHome(),
    );
  }
}