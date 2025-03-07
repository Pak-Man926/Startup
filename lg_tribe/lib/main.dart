import 'package:flutter/material.dart';
import 'package:lg_tribe/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LG Tribe'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          "Welcome to LG Tribe!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
