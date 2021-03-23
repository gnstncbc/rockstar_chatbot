import 'package:flutter/material.dart';
import 'package:rockstar_chatbot/anasayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rockstar Chatbot',
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Anasayfa(),

      },
      //onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context) => HataSayfasi()),
    );
  }
}