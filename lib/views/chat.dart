import 'package:flutter/material.dart';

import '../constraints/list.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/ronaldo.png'),
              ),
              title: Text(name[index].toString()),
              subtitle: Row(children: [
                Icon(
                  index % 2 == 0 ? Icons.done : Icons.done_all,
                  color: Colors.green,
                ),
                Text("Hello everyone"),
              ]),
              trailing: Text("9:45am"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF008069),
        child: Icon(
          Icons.message_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
