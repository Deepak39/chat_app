import "package:flutter/material.dart";

class CameraScreen extends StatefulWidget {
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text("This is Camrea Screen",style: new TextStyle(color: Colors.black),),
    );
  }
}