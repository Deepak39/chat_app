import "package:flutter/material.dart";

class RecentChatScreen extends StatefulWidget {
  @override
  _RecentChatScreenState createState() => _RecentChatScreenState();
}

class _RecentChatScreenState extends State<RecentChatScreen> {
  var users = <Users>[
    Users(name: "Raj", head: "HI"),
    Users(name: "Ronak", head: "Hi! how are you?"),
    Users(name: "sohan", head: "HI"),
    Users(name: "Rohan", head: "HI"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text("${users[index].name}"),
        subtitle: new Text("${users[index].head}"),
        leading: new CircleAvatar(
          backgroundColor: Colors.green,
          child: new Text("R"),
        ),
      );
     },
    );
  }
}


class Users{
  var name, head, subhead;
  Users({
    this.name,
    this.head,
    this.subhead,
  });
}