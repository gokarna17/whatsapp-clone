import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/whatsapp.png"),
          ),
          title: Text("My Status"),
          subtitle: Text("Tab to add status update"),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock),
            Text(
              "Your Status updates are",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "end to end encrypted",
              style: TextStyle(color: Color(0xFF008069), fontSize: 12),
            )
          ],
        )
      ]),
    );
  }
}
