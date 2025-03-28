import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lg_tribe/Home/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => Homepage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/LG_Electronics_Background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: splashScreen(),
      ),
    );
  }

  SafeArea splashScreen() {
    return SafeArea(
      top: true,
      bottom: false,
      left: true,
      right: true,
      //minimum: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Padding(padding: EdgeInsets.all(10)),
              Padding(padding: EdgeInsets.only(top: 50)),
              Container(
                width: 100, // Diameter of CircleAvatar (2 * radius)
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/LGE_Logo_Mono_White_RGB.png'),
                    fit:
                        BoxFit
                            .scaleDown, // Ensures the image covers the circle fully
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(80)),
              Text(
                "Life's\nGood.",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              Padding(padding: EdgeInsets.all(50)),
              Text(
                "Please wait while the system initializes",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
