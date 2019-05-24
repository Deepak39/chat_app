import 'pages/recent_chats_screen.dart';
import 'pages/status_screen.dart';
import 'pages/calls_screen.dart';
import 'pages/camera_screen.dart';
import "package:flutter/material.dart";

class ChatAppHome extends StatefulWidget {
  _ChatAppHomeState createState() => _ChatAppHomeState();
}

class _ChatAppHomeState extends State<ChatAppHome> with SingleTickerProviderStateMixin{
  
  TabController _controller;
  
  @override
    void initState(){
      super.initState();
      _controller = TabController(vsync: this, initialIndex: 1, length: 4);
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("WhatsApp"),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 1.0),),
          new Icon(Icons.more_vert),
        ],

        bottom: new TabBar(
          controller: _controller,
          tabs: <Widget>[
            new Icon(Icons.camera_alt),
            new Text("CHATS"),
            new Text("STATUS"),
            new Text("CALLS"),
          ],
          indicatorColor: Colors.white,
        ),
      ),

      body: new TabBarView(
        controller: _controller,
        children: <Widget>[
          new CameraScreen(),
          new RecentChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),

      floatingActionButton: new FloatingActionButton(
        elevation: 4.0,
        backgroundColor: Theme.of(context).accentColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.message),
        onPressed: (){},
      ),
    );
  }
}
