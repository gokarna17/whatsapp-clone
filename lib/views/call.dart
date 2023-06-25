import 'package:flutter/material.dart';

import '../constraints/list.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/ronaldo.png")),
              title: Text(name[index].toString()),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.video_call,
                    color: Colors.red,
                  ),
                  Text("Missed Video call"),
                ],
              ),
              trailing: Text("11/10/2022"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.call),
      ),
    );
  }
}
