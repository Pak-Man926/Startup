import 'package:flutter/material.dart';
import 'package:lg_tribe/Country/country.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lg_tribe/Forgot%20Password/forgot_password.dart';

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
                        Text(
                          "Phone Number:",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5), // Space between label and text field
                        IntlPhoneField(
                          decoration: const InputDecoration(
                            hintText: "Enter your phone number",
                            border: OutlineInputBorder(),
                          ),
                          initialCountryCode: 'KE',
                          // onChanged: (phone) {
                          //   print(phone.completeNumber);
                         // },
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Password:",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Password()),
                                );
                              },
                              child: Text("Forgot Password?",style: TextStyle(color:Color.fromARGB(255, 206, 25, 12))),
                            ),
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
                              color:Color.fromARGB(255, 206, 25, 12),
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
