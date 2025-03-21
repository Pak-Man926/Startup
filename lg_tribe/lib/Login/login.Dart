import 'package:flutter/material.dart';
import 'package:lg_tribe/Country/country.dart';
import 'package:phonenumber_input/phonenumber_input.dart';

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
                right: 20, // Ensure it doesn't overflow horizontally
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
                    SizedBox(height: 20), // Spacing between text and input
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Phone Number:",
                        //   style: TextStyle(
                        //     fontSize: 12,
                        //     fontWeight: FontWeight.w100,
                        //   ),
                        //),
                        SizedBox(height: 5), // Space between label and text field
                        PhoneNumberInput(
                          labelText: "Phone Number",
                          onCountryCodeChanged: (code) {
                            print('Country code changed: $code');
                            },
                          onPhoneNumberChanged: (phoneNumber) {
                          print('Phone number changed: $phoneNumber');
                            },
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Password:",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            //labelText: "Password",
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (bool? value) {},
                                ),
                                Text("Remember me for 30 days"),
                              ]
                            ),
                            Text("Forgot Password?", style: TextStyle(color: Colors.red)),
                          ],
                        ),
                        SizedBox(height: 5),
                        Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                    child: Text("Sign In", style: TextStyle(color: Colors.white)),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                    child: Text("Sign in as different user", style: TextStyle(color: Colors.black)),
                  ),
                ),
                
              ],
            ),
                      ],
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
