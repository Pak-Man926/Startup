import "package:flutter/material.dart";


class Password extends StatelessWidget
{
  const Password({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Container(
                height: 50,
                //width: 50,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.key, size: 50, color: Colors.white),
               ),
              SizedBox(height: 20),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
            )
        )
      )
    );
  }
}