import "package:flutter/material.dart";
import "package:lg_tribe/Country/country.dart";

class Login extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          top: true,
          bottom: false,
          left: true,
          right: true,
          minimum: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/lg_tribe_logo.png'),
                  ),
                  
                ]
              )
            ]
          )
        )
      )
        
    );
  }
}