import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 250, bottom: 150),
            child: Image.asset(
              "assets/whatsapp.png",
            ),
          ),
          Text(
            "Welcome to WhatsApp",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Spacer(),
          Text("Design by Gokarna Khanal", style: TextStyle(fontSize: 14)),
          Text(
            "version:1.1.1",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
