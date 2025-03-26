import "package:flutter/material.dart";


class Password extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height:50),
               Container(
                height: 30,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50, right: 50, top: 50),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
                ),
               )
            ],
            )
        )
      )
    );
  }
}