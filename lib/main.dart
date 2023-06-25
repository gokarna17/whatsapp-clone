import 'package:flutter/material.dart';
import 'package:whatsapp/views/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Color(0xFF008069))),
      debugShowCheckedModeBanner: false,
      //darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
