import "package:flutter/material.dart";
import "package:lg_tribe/Country/country.dart";

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Background content
              // Positioned Image
              Positioned(
                top: 100, // Adjust to move image up/down
                left: 20,  // Adjust to move image left/right
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/lg_tribe_logo.png'),
                ),
              ),
               Positioned(
                top: 250,
                left: 20,
                  child:Text("Welcome back! Please enter your details",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  children:[
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox()
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
