import "package:flutter/material.dart";
import "package:phonenumber_input/phonenumber_input.dart";
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 120),
              Container(
                //height: 50,
                //width: 50,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50, right: 50),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 76, 92),
                  //borderRadius: BorderRadius.circular(50),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.key, size: 50, color: Colors.white),
              ),
              SizedBox(height: 40),
              Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "No worries, we'll send in your reset instructions",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Registered Phone Number",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
