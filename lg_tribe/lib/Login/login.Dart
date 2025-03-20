import 'package:flutter/material.dart';
import 'package:lg_tribe/Country/country.dart';

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
              Positioned(
                top: 50, // Adjust to move image up/down
                left: 20,  // Adjust to move image left/right
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/lg_tribe_logo.png'),
                ),
              ),
              Positioned(
                top: 250,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back! Please enter your details",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    SizedBox(height: 30), // Spacing between text and input
                     Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number:",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              //hintText: 'Enter your phone number',
                            ),
                          ),
                        ]
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
