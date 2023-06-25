import 'package:flutter/material.dart';
import 'package:whatsapp/views/call.dart';
import 'package:whatsapp/views/chat.dart';
import 'package:whatsapp/views/groups.dart';
import 'package:whatsapp/views/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            //IconButton(onPressed: () {}, icon: Icon(Icons.group_add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: '1', child: Text("New Group")),
                PopupMenuItem(value: '2', child: Text("Clear call log")),
                PopupMenuItem(value: '3', child: Text("Setting"))
              ],
            )
          ],
          bottom: TabBar(
              dividerColor: Colors.white,
              labelColor: Colors.white,
              indicatorWeight: 4,
              splashFactory: NoSplash.splashFactory,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(child: Icon(Icons.group_add)),
                Tab(child: Text("Chats")),
                Tab(child: Text("Status")),
                Tab(child: Text("Calls"))
              ]),
        ),
        body: TabBarView(
            children: [Groups(), ChatScreen(), StatusScreen(), CallScreen()]),
      ),
    );
  }
}
